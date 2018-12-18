library(DBI)
library(tidyverse)

options(digits.secs = 6, digits = 6)

source("Helpers/eventHelpers.R")
source("Helpers/batchInsert.R")
source("Helpers/sqlStrQuote.R")

extractEventsProcessor <- function(con, id) {


  # helpers -----------------------------------------------------------------

  quoteEvents <- function(dat) {

    if (nrow(dat) > 0) {

    dat %>%
      mutate_at(vars(event_type, trip_id, start_at, start_position, end_at, end_position, marker_position, event_details),
                funs(sqlStrQuote))

    } else {

      dat
    }

  }

  # event calculating functions ---------------------------------------------

  getPotholeEvents <- function(dat, trip) {

    getRes <- function(signal, filter_width = 11) {
      scale(signal - stats::filter(signal, rep(1/filter_width, filter_width)))
    }

    bump_score <-
      with(dat,
           as.numeric(stats::filter(getRes(rotation_y) * getRes(acceleration_z), rep(1/7, 7))))

    event_rle <- rle(bump_score >= 2)

    event_rle$values[event_rle$values == F & event_rle$length < (0.5 * 10)] <- TRUE
    event_rle <- rle(inverse.rle(event_rle))

    event_rle$changes <- c(0, cumsum(event_rle$lengths))

    starts <- (event_rle$changes[1:(length(event_rle$changes) - 1)] + 1)
    stops <- (event_rle$changes[(1:(length(event_rle$changes) - 1)) + 1])

    bump <- which(event_rle$values == TRUE & event_rle$lengths >= (0.5 * 10))

    pmap_dfr(list(starti = starts[bump],
                  stopi = stops[bump]),
            newPotholeEvent,
            dat = dat,
            trip = trip) %>%
      bind_rows()

  }

  getStandstillEvents <- function(dat, trip, brake_events) {

    newStandstillEvent <- newStandstillEventConstructor(brake_events)

    event_rle <- rle(dat$vehicle_speed_0d < 0.5)

    event_rle$values[event_rle$values == F & event_rle$length < (0.5 * 10)] <- TRUE
    event_rle <- rle(inverse.rle(event_rle))

    event_rle$changes <- c(0, cumsum(event_rle$lengths))

    starts <- (event_rle$changes[1:(length(event_rle$changes) - 1)] + 1)
    stops <- (event_rle$changes[(1:(length(event_rle$changes) - 1)) + 1])

    idle <- which(event_rle$values == TRUE & event_rle$lengths >= (3 * 10))

    pmap_dfr(list(starti = starts[idle],
                  stopi = stops[idle]),
         newStandstillEvent,
         dat = dat,
         trip = trip) %>%
      bind_rows()

  }

  getBrakeAccEvents <- function(dat, trip) {

    speed_changes <-
      dat %>%
      transmute(spd_chg_score = c(rep(NA, 5), abs(diff(vehicle_speed_0d, lag = 5))) * acceleration_x * 9.81) %>%
      mutate(spd_chg_score = stats::filter(spd_chg_score, rep(1/21, 21)),
             spd_chg = findInterval(spd_chg_score, c(-Inf, -1/0.7, 1/0.7, Inf), all.inside = T)) %>%
      pull(spd_chg)

    event_rle <- rle(speed_changes)

    event_rle$values[event_rle$values != 2 & event_rle$length < (0.7 * 10)] <- 2
    event_rle <- rle(inverse.rle(event_rle))

    event_rle$changes <- c(0, cumsum(event_rle$lengths))

    starts <- (event_rle$changes[1:(length(event_rle$changes) - 1)] + 1)
    stops <- (event_rle$changes[(1:(length(event_rle$changes) - 1)) + 1])

    DEC <- which(event_rle$values == 1)
    ACC <- which(event_rle$values == 3)

    c(
      pmap(list(starti = starts[DEC],
                stopi = stops[DEC]),
           newBrakeEvent,
           dat = dat,
           trip = trip),

      pmap(list(starti = starts[ACC],
                stopi = stops[ACC]),
           newAccelerationEvent,
           dat = dat,
           trip = trip)
    ) %>%
      bind_rows()

  }


  # load data ---------------------------------------------------------------

  ## this produces warnings due to the geography-datatype (which is unknown to R) of the gps_position column
  suppressWarnings({
    dat <-
      tbl(con, dbplyr::in_schema("trip_data", "measurement_t")) %>%
      filter(trip_id == id$trip_id) %>%
      arrange(measured_at) %>%
      collect()
  })

  trip <-
    tbl(con, dbplyr::in_schema("trip_data", "trip_t")) %>%
    filter(trip_id == id$trip_id) %>%
    collect()


  brake_acc_events <- getBrakeAccEvents(dat, trip) %>% quoteEvents()
  pothole_events <- getPotholeEvents(dat, trip) %>% quoteEvents()

  dbBegin(con)

  db_worked <- FALSE

  tryCatch({

    ## if already present: delete
    dbExecute(con,
              paste0("DELETE FROM trip_data.event_t WHERE trip_id='", trip$trip_id, "';"))

    batchInsert(con, "trip_data.event_t", brake_acc_events, 10000)

    ## get brake events for standstill event details
    ## this produces warnings due to the geography-datatype and event_type enum (which are unknown to R) of the gps/event_type columns
    suppressWarnings({
      brake_events <-
        tbl(con, dbplyr::in_schema("trip_data", "event_t")) %>%
        filter(trip_id == trip$trip_id,
               event_type == "BRAKE") %>%
        collect()
    })

    batchInsert(con, "trip_data.event_t", pothole_events, 10000)

    standstill_events <- getStandstillEvents(dat, trip, brake_events) %>% quoteEvents()
    batchInsert(con, "trip_data.event_t", standstill_events, 10000)

    db_worked <- TRUE

  }, error = function(e) {
      dbRollback(con)
  })

  if (db_worked) {

    dbCommit(con)
    return(TRUE)

  } else {

    return(FALSE)
  }

}
