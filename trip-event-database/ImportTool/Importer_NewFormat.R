setwd("/opt/")
filename <- "ImportTool/Datasets/20180824_beagle_id-06/rawData.csv"

## ---------------
library(tidyverse)

options(digits.secs = 6, digits = 6)
## ---------------

folder <- dirname(filename)

if (any(str_detect(list.files(folder), "^imported_"))) {
  stop("This folder has already been imported!")
  quit(save = "no")
}

dat <- read_delim(filename, delim = ";", col_names = T)

source("DBAnalytics/Helpers/signal_name_map.R")
source("ImportTool/getDBConnectionRemote.R")
source("DBAnalytics/Helpers/batchInsert.R")
source("DBAnalytics/Helpers/sqlStrQuote.R")
source("DBAnalytics/init.R")

name_inds <- match(dat$signal_name, signal_name_map$OldName)

extractID <- function(id) {

  nums <- str_extract_all(id, "[0-9]+")  #use extract_all to prduce an error if there are two IDs found (lengths will not match)
  nums %>% unlist() %>% as.integer()
}


dat <-
  dat %>%
  select(-id) %>%
  mutate(signal_name = ifelse(is.na(name_inds), signal_name, signal_name_map$DBName[name_inds]),
         trip_id = stringr::str_sub(trip_id, 4)) %>%
  mutate_at(vars(driver_id, beagle_id, vehicle_id), funs(extractID)) %>%
  mutate_at(vars(dttm, signal_name, trip_id),
            funs(sqlStrQuote)) %>%
  rename(measured_at = dttm)

## allow for database startup
Sys.sleep(60)

con <- getDBConnection()


batchInsert(con, "raw_data.raw_data_t", dat, 10000)

file.create(file.path(folder, paste0("imported_", Sys.Date())))

initDB()