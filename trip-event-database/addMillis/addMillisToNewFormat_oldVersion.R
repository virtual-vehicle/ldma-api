library(tidyverse)
library(lubridate)

options(digits.secs = 6, digits = 6)

#############

#infile <- "//level2/Projects/ADAXG_AEGIS/Datasets/BeagleBone_ID11/A4Kerschi_21032018/rawData.csv"
#infile <- "//level2/Projects/ADAXG_AEGIS/Datasets/BeagleBone_ID1/BMW320De92_20180612/rawData.csv"
#infile <- "//level2/Projects/ADAXG_AEGIS/Datasets/BeagleBone_ID8/SkodaOctavia_20180614/rawData.csv"
infile <- "//level2/Projects/ADAXG_AEGIS/Datasets/BeagleBone_ID4/AUDI_A4_Kerschi_20180611/rawData.csv"

dat <- read_delim(infile, delim=";", col_names=T)


## adds the miilisecond information to measurements of one second
addMillis <- function(mindat) {

  vals <- rle(mindat$sensor)
  vals$values <- seconds(1) * round((seq_along(vals$values) - 1) / length(vals$values), 6)

  mindat %>%
    mutate(dttm = dttm + rep(vals$values, vals$lengths)) %>%  # inverse.rle does not work with class "period"
    select(-sensor)

}


dat <-
  dat %>%
  mutate(sensor = str_replace(signal_name, "Acc[XYZ]", "Acc"),
         sensor = str_replace(sensor, "Gyro[XYZ]", "Gyro"),
         sensor = str_replace(sensor, "Altitude|Latitude|Longitude", "GPS")) %>%
  group_by(dttm) %>%
  do(addMillis(.)) %>%
  ungroup()

dat %>%
  mutate(dttm = format(dttm, "%Y-%m-%d %H:%M:%OS")) %>% ## write_delim uses fixed dttm format that cannot be changed
  write_delim(str_replace(infile, "\\.csv$", "_fixed.csv"), delim = ";")
