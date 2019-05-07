library(tidyverse)
library(lubridate)

options(digits.secs = 6, digits = 6)

source("addMissingMicroseconds/helpers/add_microsecs_old_format.R")
source("addMissingMicroseconds/helpers/add_microsecs_new_format.R")

folder <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure/"

infos <-
  folder %>%
  list.files(full.names = T, recursive = T) %>%
  as_tibble() %>%
  transmute(filename = value) %>%
  filter(str_detect(filename, "(rawData|accelerations).*csv$")) %>%
  rowwise() %>%
  mutate(second_line = list(read_lines(filename, skip = 1, n_max = 1))) %>%
  ungroup()

infos <-
  infos %>%
  rowwise() %>%
  mutate(second_line = ifelse(length(second_line) == 0, "", second_line[[1]])) %>%
  ungroup() %>%
  mutate(hasMillis = str_detect(second_line, "[0-9]{4}-[0-9]{1,2}-[0-9]{1,2} [0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}\\.")) %>%
  filter(!hasMillis,
         !str_detect(filename, "driver_id-06.vehicle_id-02")) %>%  ## remove CAN data
  transmute(folder = dirname(filename),
            newFormat = str_detect(basename(filename), "rawData"))


for (i in seq_len(nrow(infos))) {

  if (infos$newFormat[i]) {

    add_microsecs_new_format(file.path(infos$folder[i], "rawData.csv"))

  } else {

    add_microsecs_old_format(file.path(infos$folder[i], "accelerations.csv"))
    add_microsecs_old_format(file.path(infos$folder[i], "gyroscopes.csv"))
    add_microsecs_old_format(file.path(infos$folder[i], "obddata.csv"))
    add_microsecs_old_format(file.path(infos$folder[i], "positions.csv"))
  }

  print(i)
  flush.console()

}

