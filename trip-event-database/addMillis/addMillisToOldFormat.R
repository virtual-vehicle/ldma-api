library(tidyverse)
library(lubridate)

source("addMillisToSecond.R")

options(digits.secs = 6, digits = 6)

filename <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure/driver_id-10/vehicle_id-13/20171117_beagle_id-06/positions.csv"

addMillisToOldFormat <- function(filename) {

  new_name <- paste0(filename, ".original")
  file.rename(filename, new_name)

  read_delim(new_name, delim = ",", col_names = TRUE) %>%
    mutate(sensor = seq_len(n())) %>%  ## each row should get a independent time
    rename(dttm = timestamp) %>%
    group_by(dttm) %>%
    do(addMillisToSecond(.)) %>%
    ungroup() %>%
    select(-sensor) %>%
    rename(timestamp = dttm) %>%
    mutate(timestamp = format(timestamp, "%Y-%m-%d %H:%M:%OS")) %>%
    mutate_all(funs(as.character)) %>%
    write.table(filename, sep = ",", col.names = TRUE, row.names = F, append = FALSE, quote = TRUE)

}


