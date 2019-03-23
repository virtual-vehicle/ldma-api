read_new_format <- function(trip){
  #Collect the trip data
  return(read_csv(trip, col_types = cols(id = col_double(),
                                         dttm = col_character(),
                                         signal_name = col_character(),
                                         signal_value = col_double(),
                                         driver_id = col_character(),
                                         beagle_id = col_double(),
                                         vehicle_id = col_character(),
                                         trip_id = col_character())))
}