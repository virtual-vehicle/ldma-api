library(DBI)
library(jsonlite)
library(tidyverse)

source("helpers/db_batch_insert.R")
source("helpers/sql_str_quote.R")

options(digits.secs = 6, digits = 6)

raw_trip_processor <- function(con, id) {

  
  needed_signals <- c("gps_latitude_raw", "gps_longitude_raw",
                      "acceleration_x_unaligned", "acceleration_y_unaligned", "acceleration_z_unaligned",
                      "rotation_x_unaligned", "rotation_y_unaligned", "rotation_z_unaligned",
                      "vehicle_speed_0d")

  # helpers -----------------------------------------------------------------
  removeGPSOutliers <- function(dat) {

    valid_inds <- !is.na(dat$latitude) & !is.na(dat$longitude)
    lat <- dat$latitude[valid_inds]
    lon <- dat$longitude[valid_inds]
    time <- dat$measured_at[valid_inds]

    ## mean distance per degree
    lat_med <- median(lat, na.rm = T)/360*2*pi
    m_per_deg_lat = 111132.954 - 559.822 * cos( 2*lat_med) + 1.175 * cos( 4*lat_med)
    m_per_deg_lon = 111132.954 * cos (lat_med)

    ## compute max plausible distance and compare with observed
    dists <- sqrt((diff(lat)*m_per_deg_lat)^2 + (diff(lon)*m_per_deg_lon)^2)
    timediff <- diff(as.numeric(time))
    max_dist <- 160 * 1000 / 3600 * timediff  ## max 160 km/h is plausible

    valid_inds[valid_inds][dists > max_dist] <- F
    dat$latitude[!valid_inds] <- NA
    dat$longitude[!valid_inds] <- NA
    dat$gps_altitude[!valid_inds] <- NA  #altitude is probably also invalid if we got the wron position

    dat

  }

  expSmooth <- function(x) c(NA, as.numeric(HoltWinters(x, alpha = 0.4, beta = F, gamma = F)$fitted[, "xhat"]))

  rotateIMUdata <- function(dat) {

    gravity <- with(dat,
                    c(mean(acceleration_x_unaligned , na.rm = T),
                      mean(acceleration_y_unaligned , na.rm = T),
                      mean(acceleration_z_unaligned , na.rm = T)))

    k <- gravity / sqrt(sum(gravity^2) )

    cands <- with(dat,
                  which(abs(rotation_x_unaligned) < 3.5 &
                        abs(rotation_y_unaligned) < 3.5 &
                        abs(rotation_z_unaligned) < 3.5 &
                        !is.na(acceleration_x_unaligned) &
                        !is.na(acceleration_y_unaligned) &
                        !is.na(acceleration_z_unaligned)))

    ## compute accelerations estimated from VehicleSpeed
    lag <- 10
    acc_xc <- c(rep(NA, lag), diff(dat$vehicle_speed_0d, lag = lag))[cands]

    acc_mean <- colMeans(dat[cands[which(acc_xc > 0)],
                             c("acceleration_x_unaligned",
                               "acceleration_y_unaligned",
                               "acceleration_z_unaligned")], na.rm = T)
    dec_mean <- colMeans(dat[cands[which(acc_xc < 0)],
                             c("acceleration_x_unaligned",
                               "acceleration_y_unaligned",
                               "acceleration_z_unaligned")], na.rm = T)

    j <- acc_mean - dec_mean
    j <- j/sqrt(sum(j^2))
    
    ## project k onto the plane which is normal to j and normalize it
    k <- k - sum(j*k) * j
    j <- j / sqrt(sum(j^2))


    ## get i as cross product of k and j
    i <- sapply(1:3, function(i) det(rbind(j,k)[, -i]) * (-1)^(i+1))
    i <- i/sqrt(sum(i^2))
    
    ## rotate the accerlation readings
    dat[, c("acceleration_x", "acceleration_y", "acceleration_z")] <-
      as.matrix(dat[, c("acceleration_x_unaligned", "acceleration_y_unaligned", "acceleration_z_unaligned")]) %*% cbind(j, i, k)

    dat[, c("rotation_x", "rotation_y", "rotation_z")] <-
      as.matrix(dat[, c("rotation_x_unaligned", "rotation_y_unaligned", "rotation_z_unaligned")]) %*% cbind(j, i, k)

    dat

  }


  # data processing ---------------------------------------------------------

  ## this produces warnings due to the enum-datatype (which is unknown to R) of the signal_name column
  suppressWarnings({
    dat <-
      tbl(con, dbplyr::in_schema("raw_data", "raw_data_t")) %>%
      select(-id) %>%
      filter(trip_id == id$trip_id) %>%
      arrange(measured_at) %>%
      collect()
  })

  
  ##make sure the needed signals exist and have at least 10 values
  missing_signals <- needed_signals[!(needed_signals %in% dat$signal_name)]
  
  if (length(missing_signals) > 0) {
    return(paste0("Missing signals: ", paste0(missing_signals, collapse = ", "), "."))
  }
  
  small_signals <- 
    dat %>%
    filter(signal_name %in% needed_signals) %>% 
    group_by(signal_name) %>% 
    tally() %>% 
    filter(n < 10) %>% 
    pull(signal_name)
  
  if (length(small_signals) > 0) {
    return(paste0("Signals with less than 10 points: ", paste0(small_signals, collapse = ", "), "."))
  }
  
  
  ## extract IDs for separate table
  trip <-
    dat %>%
    ## this also checks if the IDs do not change (they should never chnage within a trip)
    summarize(trip_id = unique(trip_id),
              beagle_id = unique(beagle_id),
              vehicle_id = unique(vehicle_id),
              driver_id = unique(driver_id))


  dat <-
    dat %>%
    select(-trip_id, -beagle_id, -vehicle_id, -driver_id) %>%
    ## We ignore this signal since it is hardly ever present and does not contain information that is relevant for us
    filter(signal_name != "monitor_status_since_DTCs_cleared_01") %>% 
    spread(signal_name, signal_value) %>%
    mutate(latitude = floor(gps_latitude_raw/100) + (gps_latitude_raw %% 100) / 60,
           longitude = floor(gps_longitude_raw/100) + (gps_longitude_raw %% 100) / 60) %>%
    removeGPSOutliers() %>%
    select(-gps_latitude_raw, -gps_longitude_raw)

  ## there can now be all-NA columns which cannot be interpolated => remove them
  ## (I think this can only happen to GPS)
  dat <- dat[, colSums(is.na(dat)) != nrow(dat)]

  if (!all(c("latitude", "longitude") %in% names(dat))) {
    return("All GPS measurements are invalid.")
  }
  
  
  
  ## interpolate on regular 10Hz grid
  dat <-
    tibble(measured_at = seq(min(dat$measured_at), max(dat$measured_at), by = 1 / 10),
           keep = TRUE) %>%
    full_join(dat) %>%
    mutate_at(vars(-measured_at, -keep),
              funs(spline(measured_at, ., xout = measured_at, method = "natural")$y)) %>%
    filter(keep == TRUE) %>%
    mutate(measured_after = round(measured_at - min(measured_at), 2)) %>%
    select(-keep)

  ## make sure vehicle speed does not get negative (in extrapolated areas)
  dat$vehicle_speed_0d[dat$vehicle_speed_0d < 0] <- 0

  ## filter acc and gyro data
  dat <-
    dat %>%
    mutate_at(vars(starts_with("acceleration_")),
              funs(expSmooth)) %>%
    mutate_at(vars(starts_with("acceleration_"), starts_with("rotation_")),
              funs((stats::filter(., rep(1/5, 5)))))

  ## rotate acc and gyro data to be aligned with vehicle coordinate system
  dat <-
    dat %>%
    rotateIMUdata() %>%
    select(-ends_with("_unaligned"))


  # add additional infos --------------------------------------------------------


  ## get start and end position adress
  start_stop <- tibble(start_position_name=NA_character_, end_position_name=NA_character_)

  try({
    start_stop <-
      dat %>%
      select(latitude, longitude) %>%
      filter(!is.na(latitude) & !is.na(longitude)) %>%
      slice(c(1, n())) %>%
      transmute(query = paste0("https://nominatim.openstreetmap.org/reverse?format=jsonv2",
                              "&lat=", latitude, "&lon=", longitude,
                              "&zoom=16&addressdetails=1&accept-language=en-US&osm_type=W&extratags=0&namedetails=0")) %>%
      pull(query) %>%
      map(fromJSON) %>%
      map(function(x) {

        road <- x$address$road
        if (is.null(road)) {
          road <- x$address$suburb
        }

        postcode <- x$address$postcode

        city <- x$address$city
        if (is.null(city)) {
          city <- x$address$village
        }
        if (is.null(city)) {
          city <- x$address$town
        }

        country <- x$address$country

        paste0(c(road, postcode, city, country), collapse = ", ")  # removes NULLs automatically

      }) %>%
      setNames(c("start_position_name", "end_position_name")) %>%
      as_tibble()
  })


  ## create tables as needed for DB
  trip <-
    trip %>%
    bind_cols(start_stop) %>%
    mutate(duration = nrow(dat) / 10,
           distance = mean(dat$vehicle_speed_0d, na.rm=T) * 1000 / 3600 * duration,
           distance = ifelse(distance < 0, 0, distance),
           start_at = dat$measured_at[1]) %>%
    mutate_at(vars(trip_id, start_position_name, end_position_name, start_at),
              funs(sql_str_quote))

  dat <-
    dat %>%
    mutate(gps_position = paste0("ST_SetSRID(ST_Point(", longitude, ", ", latitude, "), 4326)::geography"),
           measured_at = sql_str_quote(measured_at),
           trip_id = trip$trip_id)%>%
    select(-latitude, -longitude)


  # insert in DB ------------------------------------------------------------

  dbBegin(con)

  db_worked <- FALSE

  tryCatch({

  ## if already present: delete
  dbExecute(con,
            paste0("DELETE FROM trip_data.measurement_t WHERE trip_id=", trip$trip_id, ";"))

  ## events and their counts must be deleted too, due to foreign key constraints
  dbExecute(con,
            paste0("DELETE FROM trip_data.event_t WHERE trip_id=", trip$trip_id, ";"))
  
  dbExecute(con,
            paste0("DELETE FROM trip_data.event_count_t WHERE trip_id=", trip$trip_id, ";"))

  dbExecute(con,
            paste0("DELETE FROM trip_data.trip_t WHERE trip_id=", trip$trip_id, ";"))

  
  ## insert measurements first so that postgis can be used t simplify the gps track
  ## --> foreign key constraint of measurement_t needs to be deferred
  ## It seems as if it is not possible to defer a single constraint when using timescale
  ## (because the constraints on the timescale chunks remain effective)
  dbExecute(con,
            "SET CONSTRAINTS ALL DEFERRED;")
  
  db_batch_insert(con, "trip_data.measurement_t", dat, 10000)
  
  trip$simplified_gps_track <- 
    sql_str_quote(
    dbGetQuery(con,
               paste0(
               "SELECT
                ST_Simplify(
                 ST_MakeLine(
                   ARRAY(SELECT gps_position::geometry 
                         FROM trip_data.measurement_t 
                         WHERE trip_id = '", id$trip_id, "' 
                         ORDER BY measured_at ASC)
                 ),
                 0.0001
               ) AS simple_track;"))$simple_track)
  
  db_batch_insert(con, "trip_data.trip_t", trip, 1)
  

  db_worked <- TRUE

  }, error = function(e) {
      dbRollback(con)
  })

  if (db_worked) {

    dbCommit(con)
    return(TRUE)

  } else {

    return("Could not insert result in DB.")
  }

}
