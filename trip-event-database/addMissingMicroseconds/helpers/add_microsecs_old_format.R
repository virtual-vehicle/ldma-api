library(tidyverse)
library(lubridate)

source("addMissingMicroseconds/helpers/generate_microsecs.R")

options(digits.secs = 6, digits = 6)

add_microsecs_old_format <- function(filename) {

  new_name <- paste0(filename, ".original")
  file.rename(filename, new_name)

  read_delim(new_name, delim = ",", col_names = TRUE) %>%
    mutate(sensor = seq_len(n())) %>%  ## each row should get a independent time
    rename(dttm = timestamp) %>%
    group_by(dttm) %>%
    do(generate_microsecs(.)) %>%
    ungroup() %>%
    select(-sensor) %>%
    rename(timestamp = dttm) %>%
    mutate(timestamp = format(timestamp, "%Y-%m-%d %H:%M:%OS")) %>%
    mutate_all(funs(as.character)) %>%
    write.table(filename, sep = ",", col.names = TRUE, row.names = F, append = FALSE, quote = TRUE)

}


