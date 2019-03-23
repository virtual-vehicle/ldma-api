library(tidyverse)


options(digits.secs = 6, digits = 6)

source("importInDB/helpers/import_new_format.R")
source("importInDB/helpers/import_old_format.R")
source("importInDB/helpers/get_db_connection.R")

path <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure"

raw_data_paths <- function(path,pattern){
  
  data_files <- list.files(path, pattern = pattern, recursive = T)
  full_path <- file.path(path,data_files)
  return(full_path)
}
con <- get_db_connection()

#----------Importing New Data format-------------------------------
list_of_new_data_Paths <- raw_data_paths(path,"^Trip_.*\\.csv$")

for (inewpath in list_of_new_data_Paths ){
  
  # Importing new data format to the raw_data database
  import_new_format(inewpath, con)

}

#----------Importing old Data format-------------------------------
list_of_old_data_Paths <- raw_data_paths(path,"accelerations.csv")


for (ioldpath in list_of_old_data_Paths ){
  
  folder <- dirname(ioldpath)
  print(folder)
  
  import_old_format(folder, con)
  
}
dbDisconnect(con)
