library(DBI)
library(tidyverse)

source("helpers/check_duplicates.R")
source("helpers/split_by_trip.R")


plink <- "exportFromBeagle/helpers/plink.exe"



# preparations ------------------------------------------------------------

#start mysql service on beagle
system2(plink,
        args = c("-ssh", "-T", "-l debian", "-pw temppwd",
                 "-m exportFromBeagle/helpers/start_mysql",
                 "192.168.7.2"),
        stdout = NULL, stderr = NULL)

#enable ssh tunnel to beagle
system2(plink,
        args = c("-T", "-l debian", "-pw temppwd",
                 "192.168.7.2",
                 "-L 3306:localhost:3306"),
        wait = FALSE, invisible = FALSE)



# transfer data -----------------------------------------------------------

con <- 
  dbConnect(RMariaDB::MariaDB(),
            host = "localhost",
            port = 3306,
            db = "LoggingDataRaw2",
            user = "root")


info <- dbGetQuery(con, "SELECT driver_id, beagle_id, vehicle_id FROM rawData LIMIT 1;")

outpath <- file.path(
  "\\\\level2", "Projects", "ADAXG_AEGIS", "Datasets_new_structure",
  paste0("driver_id-", sprintf("%02i", as.integer(info$driver_id))),
  paste0("vehicle_id-", sprintf("%02i", as.integer(info$vehicle_id))),
  paste0(format(Sys.Date(), "%Y%m%d"), "_beagle_id-", sprintf("%02i", as.integer(info$beagle_id))))
  

dir.create(outpath, recursive=T, showWarnings=F)


query <- dbSendQuery(con, "SELECT * FROM rawData;")

while (!dbHasCompleted(query)) {
  
  dbFetch(query, 50000) %>% 
    as_tibble() %>% 
    mutate(trip_id = paste0( "\\\\x", map_chr(trip_id, ~paste0(as.character(.), collapse = ""))),
           dttm = format(dttm, "%Y-%m-%d %H:%M:%OS6")) %>% 
    split_by_trip(outpath, "Trip_<<id>>")
  
}

dbClearResult(query)




# check for duplicates ----------------------------------------------------

files <- list.files(outpath, pattern="*.csv", full.names=T)
walk(files,
     function(f) check_duplicates(read_csv(f), f))


# delete data from beagle --------------------------------------------------


#dbExecute(con, "TRUNCATE rawData;")


# clean up ----------------------------------------------------------------

#diconnect database
dbDisconnect(con)

#close ssh tunnel
system2("taskkill", args = "/im plink.exe")

#shutdown beagle
system2(plink,
        args = c("-ssh", "-T", "-l debian", "-pw temppwd",
                 "-m exportFromBeagle/helpers/shutdown_system",
                 "192.168.7.2"))


