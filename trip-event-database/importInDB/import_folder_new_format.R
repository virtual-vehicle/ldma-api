library(tidyverse)

source("importInDB/helpers/import_new_format.R")
source("importInDB/helpers/get_db_connection.R")

folder <- "//level2/Projects/ADAXG_AEGIS/Datasets_new_structure/driver_id-13/vehicle_id-17/20190207_beagle_id-06"


files <- list.files(folder, full.names=T, recursive=F)
files <- str_subset(files, "/Trip_.*\\.csv$")

con <- get_db_connection()

walk(files, ~import_new_format(., con))


