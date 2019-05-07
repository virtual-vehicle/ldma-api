#folder <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure/driver_id-10/vehicle_id-13/20170913_beagle_id-06"

## ---------------
library(tidyverse)
library(uuid)
## ---------------

source("importInDB/helpers/signal_name_map.R")
source("helpers/db_batch_insert.R")
source("helpers/sql_str_quote.R")

options(digits.secs = 6, digits = 6)

##---------------

import_old_format <- function(folder, con){
  
    if (any(str_detect(list.files(folder), "^imported_"))) {
      
      message(paste("This folder has already been imported!: \n ", folder))
    }else{
    
    
    dat <-
      bind_rows(
          {
          read_delim(file.path(folder, "accelerations.csv"),
                     delim=",", quote="\"", col_names=T) %>%
            select(-acceleration_id) %>%
            rename(acceleration_x_unaligned = x_value,
                   acceleration_y_unaligned = y_value,
                   acceleration_z_unaligned = z_value) %>%
            gather(key = "signal_name", value = "signal_value", starts_with("acceleration_"))
            },
          {
          read_delim(file.path(folder, "gyroscopes.csv"),
                     delim=",", quote="\"", col_names=T) %>%
            select(-gyroscope_id) %>%
            rename(rotation_x_unaligned = x_value,
                   rotation_y_unaligned = y_value,
                   rotation_z_unaligned = z_value) %>%
            gather(key = "signal_name", value = "signal_value", starts_with("rotation_"))
          },
          {
          read_delim(file.path(folder, "positions.csv"),
                     delim=",", quote="\"", col_names=T) %>%
            select(-pos_id) %>%
            rename(gps_altitude = altitude,
                   gps_latitude_raw = latitude,
                   gps_longitude_raw = longitude) %>%
            gather(key = "signal_name", value = "signal_value", starts_with("gps_"))
          },
          {
          obd <-
           read_delim(file.path(folder, "obdData.csv"),
                     delim=",", quote="\"", col_names=T) %>%
            select(-obdData_id)
    
          name_inds <- match(tolower(obd$obdPid), signal_name_map$OldName)
    
          obd %>%
            rename(signal_name = obdPid,
                   signal_value = data) %>%
            mutate(signal_name = ifelse(is.na(name_inds), signal_name, signal_name_map$DBName[name_inds]))
          })
    
    
    n_trips <- dat$trip_id %>% unique() %>% length()
    uuids <-  replicate(max(dat$trip_id), UUIDgenerate())
    
    if (length(unique(uuids)) != max(dat$trip_id)) {
    
      message("uuids are not unique!") ## sometime that happens; I do not know when or why
    
    }
    
        ## extract ids from path
    beagle_id <- str_extract(basename(folder), "[0-9]+$") %>% as.integer()
    vehicle_id <- str_extract(basename(dirname(folder)), "[0-9]+$") %>% as.integer()
    driver_id <- str_extract(basename(dirname(dirname(folder))), "[0-9]+$") %>% as.integer()
    
    
    dat <-
      dat %>%
      mutate(trip_id = uuids[trip_id]) %>%
      rename(measured_at = timestamp) %>%
      arrange(measured_at) %>%
      mutate(driver_id = driver_id,
             beagle_id = beagle_id,
             vehicle_id = vehicle_id) %>%
      mutate_at(vars(trip_id, measured_at, signal_name),
                funs(sql_str_quote))

    
    db_batch_insert(con, "raw_data.raw_data_t", dat, 20000)
    
    
    file.create(file.path(folder, paste0("imported_", Sys.Date())))
  }
}