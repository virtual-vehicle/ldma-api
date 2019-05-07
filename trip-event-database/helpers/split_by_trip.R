
split_by_trip <- function(new_data, output_data_path, name_pattern){
  
  #Split the CSV file by trip id
  splited_Trips <- split(new_data, new_data$trip_id)
  
  for (trip_id in names(splited_Trips)){
    
    # Create the new file name based on the Trip id
    new_file_name <- paste(sub("<<id>>", make.names(trip_id),name_pattern,fixed = TRUE),".csv",sep="")
    
    # Get the current splitted data
    current_data <- splited_Trips[[trip_id]]
    
    # Write the new CSV
    new_file_path <- file.path(output_data_path, new_file_name)
    
    # Check if this file exists then append if not create the new file with the corresponsing colnames
    if (!file.exists(new_file_path)){
      
      # Create New File
      write_csv(current_data, new_file_path, append = FALSE)
      
    }else{
      #Append to the Existing File
      write_csv(current_data, new_file_path, append = TRUE)
    }
    
  }
  
}