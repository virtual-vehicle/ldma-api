library(tidyverse)
library(lubridate)

## adds the microsecond information to measurements of one second
## second_dat must have colums dttm (contains mesurement datetime) and
## sensor (the sensor that produced the measurement)
## All consectutive rows that have the same value in sensor will get
## the same dttm value
generate_microsecs <- function(second_dat) {

  vals <- rle(second_dat$sensor)
  vals$values <- seconds(1) * round((seq_along(vals$values) - 1) / length(vals$values), 6)

  second_dat %>%
    mutate(dttm = dttm + rep(vals$values, vals$lengths))  # inverse.rle does not work with class "period"
}
