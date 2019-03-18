library(tidyverse)

source("importInDB/helpers/signal_name_map.R")
source("helpers/db_batch_insert.R")
source("helpers/sql_str_quote.R")

options(digits.secs = 6, digits = 6)

## ---------------
import_new_format <- function(filename, con){
 
 folder <- dirname(filename)

 if (any(str_detect(list.files(folder), paste("^imported_", basename(gsub('.{0,4}$', '', filename)),sep = "")))) {
   
   message(paste("This file has already been imported!: \n ", basename(filename)))
   
}else{
  
  dat <- read_delim(filename, delim = ",", col_names = T)



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
              funs(sql_str_quote)) %>%
    rename(measured_at = dttm)

  db_batch_insert(con, "raw_data.raw_data_t", dat, 10000)


  file.create(file.path(folder, paste0("imported_", basename(gsub('.{0,4}$', '', filename)), Sys.Date())))
}

}


