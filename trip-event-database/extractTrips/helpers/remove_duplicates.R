remove_duplicates <- function(path,trip_data){
  
  
  new_trip_data<- trip_data[!duplicated(trip_data[c("dttm","signal_name")]),]
  
  # OverWrite the CSV file
  write_csv(new_trip_data,path, append = FALSE)
  
}