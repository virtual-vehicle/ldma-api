library(tidyverse)

source("addMissingMicroseconds/helpers/generate_microsecs.R")

options(digits.secs = 6, digits = 6)

add_microsecs_old_format <- function(filename) {

  ## preserve original file
  new_name <- paste0(filename, ".original")
  file.rename(filename, new_name)

  read_delim(infile, delim=";", col_names=T) %>%
    mutate(sensor = str_replace(signal_name, "Acc[XYZ]", "Acc"),
           sensor = str_replace(sensor, "Gyro[XYZ]", "Gyro"),
           sensor = str_replace(sensor, "Altitude|Latitude|Longitude", "GPS")) %>%
    group_by(dttm) %>%
    do(generate_microsecs(.)) %>%
    ungroup() %>%
    select(-sensor) %>%
    mutate(dttm = format(dttm, "%Y-%m-%d %H:%M:%OS")) %>% ## write_delim uses fixed dttm format that cannot be changed
    write_delim(str_replace(infile, "\\.csv$", "_fixed.csv"), delim = ";")

}
