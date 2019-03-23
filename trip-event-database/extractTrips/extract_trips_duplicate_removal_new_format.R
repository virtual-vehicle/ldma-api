library(tidyverse)
options(digits.secs = 6, digits = 6)

# sourcing Splitting_Tool function
source("extractTrips/helpers/extract_new_format.R")
source("helpers/check_duplicates.R")
source("extractTrips/helpers/read_new_format.R")
source("extractTrips/helpers/remove_duplicates.R")

# THIS PATH HAS TO BE CHANGED TO THE DATA PATH ON LEVEL2
path <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure"

raw_data_paths <- function(path,pattern){
   
   data_files <- list.files(path, pattern = pattern, recursive = T)
   full_path <- file.path(path,data_files)
   return(full_path)
}

#----------Splitting-------------------------------
 for (ipath in raw_data_paths(path,"rawData.csv")){
   
   # Splitting large files by trip
   extract_new_format(ipath)
   
 }
 
#----------Douplicates check and removal-----------
for (trip in raw_data_paths(path,"Trip_")){
      
      # Check for douplicates
      Douplicates <- check_duplicates(read_new_format(trip), basename(trip))
     
      #remove douplicates if any
      if (length(Douplicates)>0){

          remove_duplicates(trip, read_new_format(trip))

      }
} 


