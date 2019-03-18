#
library(readr)
library(magrittr)
library(tidyverse)
library(lubridate)

options(digits.secs = 6, digits = 6)
####################################################################################################

#folder <- "C:/Users/yasserelnemr/Desktop/AEGIS_Mycopy/AEGIS_EventDetection/Datasets_new_structure/driver_id-01/vehicle_id-06/20170117_beagle_id-01"
#folder <- MyCurrentPath

merge_extract_old_format <- function(folder, sampling_rate = 10) {

  readFile <- function(filename) {

    read_csv(filename, col_types = cols(timestamp = col_character())) %>%
      mutate(timestamp = timestamp %>% ymd_hms %>% as.numeric)

  }

  joinAccelerations <- function(res) {
    acc_file <- file.path(folder, "accelerations.csv")

    if (file.exists(acc_file)) {
      acc_file %>%
        readFile() %>%
        rename(acc_x = x_value,
               acc_y = y_value,
               acc_z = z_value,
               trip = trip_id) %>%
        select(timestamp, trip, starts_with("acc_")) %>%
        full_join(res)

    } else {

       res

    }

  }

  joinGyroscopes <- function(res) {

    gyro_file <- file.path(folder, "gyroscopes.csv")

    if (file.exists(gyro_file)) {

      gyro_file %>%
        readFile() %>%
        rename(gyro_x = x_value,
               gyro_y = y_value,
               gyro_z = z_value,
               trip = trip_id) %>%
        select(timestamp, trip, starts_with("gyro_")) %>%
        full_join(res)

    } else {

      res

    }

  }

  joinPositions <- function(res) {

    positions_file <- file.path(folder, "positions.csv")

    if (file.exists(positions_file)) {

      positions_file %>%
        readFile() %>%
        rename(trip = trip_id) %>%
        select(timestamp, trip, latitude, longitude, altitude) %>%
        full_join(res)


    } else {

      res

      }


  }

  joinOBD <- function(res) {

    obd_file <- file.path(folder, "obdData.csv")

    if (file.exists(obd_file)) {

      PID_map <- c(
        `03` = "FuelsystemStatus",
        `04` = "EngLoadCalc",
        `05` = "EngCoolantTemp",
        `06` = "ShortTermFuelTrim_1",
        `07` = "LongTermFuelTrim_1",
        `08` = "ShortTermFuelTrim_2",
        `09` = "LongTermFuelTrim_2",
        `0A` = "FuelPress",
        `0B` = "IntakeManifoldPress",
        `0C` = "EngSpeed",
        `0D` = "VehSpeed",
        `0E` = "TimingAdvanceBeforeTDC",
        `0F` = "IntakeAirTemp",
        `10` = "MAF_AirFlow",
        `11` = "ThrottlePos",
        `2F` = "FuelTankLevel",
        `33` = "BarometricPressure",
        `3C` = "CatalystTemp_1_1",
        `3D` = "CatalystTemp_2_1",
        `3E` = "CatalystTemp_1_2",
        `3F` = "CatalystTemp_1_2",
        `43` = "AbsLoadVal",
        `45` = "ThrottlePosRelative",
        `46` = "AmbientAirTemp",
        `47` = "ThrottlePosAbsB",
        `48` = "ThrottlePosAbsC",
        `49` = "ThrottlePosAbsD",
        `4A` = "ThrottlePosAbsE",
        `4B` = "ThrottlePosAbsF",
        `4C` = "ThrottleActuatorCommanded",
        `5A` = "AccPdlPos",
        `5B` = "HybridBatRemainingLife",
        `5C` = "EngOilTemp",
        `5D` = "InjectionTiming",
        `5E` = "FuelRate",
        `59` = "RailPressure",
        `61` = "DemandEngTrqPerc",
        `62` = "ActEngTrqPerc",
        `63` = "EngReferenceTrq"
      )

      dat <- obd_file %>%
               readFile() %>%
               spread(key = obdPid, value = data)

      col_cands <- PID_map[names(dat)]
      col_cands <- ifelse(is.na(col_cands), names(dat), col_cands)
      names(dat) <- col_cands

      dat %>%
        rename(trip = trip_id) %>%
        select(-obdData_id) %>%
        full_join(res)


    } else {

      res

    }
  }

  indicateOutliers <- function(x) {

    abs(x - mean(x, na.rm = T)) > 5 * sd(x, na.rm = T)

  }

  res <-
    tibble(timestamp = numeric(0)) %>%
      joinAccelerations() %>%
      joinGyroscopes() %>%
      joinPositions() %>%
      joinOBD() %>%
      split(.$trip) %>%
      lapply(function(trip) {

        ## clean GPS positions before interpolation
        invalid <- indicateOutliers(trip$latitude) |
                   indicateOutliers(trip$longitude) |
                   indicateOutliers(trip$altitude)


        trip[which(invalid), c("latitude", "longitude", "altitude")] <- NA

        ## there can now be all-NA columns which cannot be interpolated => remove them
        trip <- trip[, colSums(is.na(trip)) != nrow(trip)]

        new_time <- seq(min(trip$timestamp), max(trip$timestamp), by = 1 / sampling_rate)

        tibble(timestamp = new_time, keep = TRUE) %>%
          full_join(trip) %>%
          mutate_at(vars(-timestamp, -keep),
                    funs(spline(timestamp, ., xout = timestamp, method = "natural")$y)) %>%
          filter(keep == TRUE) %>%
          mutate(time = round(timestamp - min(timestamp), 2),
                 time_abs = as.POSIXct(timestamp, origin="1970-01-01", tz = "Europe/Vienna"),
                 trip = as.integer(trip)) %>%
          select(-keep, -timestamp) %>%
          mutate_at(vars(-time_abs, -trip), funs(round(., 6)))

      })

  outdir <- file.path(folder, "Merged_Trips")
  dir.create(outdir, showWarnings = F)

  invisible(
  lapply(res,
         function(trip) write_csv(trip,
                                  file.path(outdir, paste0("Trip", sprintf("%03i", trip$trip[1]), ".csv"))))
  )
}

