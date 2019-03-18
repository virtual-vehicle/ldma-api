# sourcing Split_by_Trip function
source("helpers/split_by_trip.R")

extract_new_format <- function(path){
  
    # check if the new_rawData dir is existing, if not create it
    output_dir <- file.path(dirname(path), "new_rawData")
    
    if (!dir.exists(output_dir)){
      dir.create(output_dir)
      
      name_pattern <- "Trip_<<id>>_" 
      
      # Read the old rawData and subset it to several files nemed by Trip id
      read_delim_chunked(path,
                         function(new_data, output_data_path=output_dir) split_by_trip(new_data, output_data_path=output_dir, name_pattern),
                                  delim=";", col_types =cols(id = col_double(),
                                                            dttm = col_character(),
                                                            signal_name = col_character(),
                                                            signal_value = col_double(),
                                                            driver_id = col_character(),
                                                            beagle_id = col_double(),
                                                            vehicle_id = col_character(),
                                                            trip_id = col_character()))
  }
}


