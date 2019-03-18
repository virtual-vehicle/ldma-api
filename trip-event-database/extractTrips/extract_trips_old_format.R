source("extractTrips/helpers/merge_extract_old_format.R")

process_path <- function(path){
  
  raw_data_files <- list.files(path,pattern = "accelerations.csv",recursive = T)
  
  for (ibath in raw_data_files){
    
    current_folder_path <- dirname(ibath)
    merge_extract_old_format(paste(path,current_folder_path,sep="/"), sampling_rate = 10)
    
  }
}

################################

path <- "F:/AEGIS_Mycopy/AEGIS_EventDetection/Datasets_new_structure/"
process_path(path)