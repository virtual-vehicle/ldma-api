initDB <- function() {
  
  try({
  
    setwd("/opt/DBAnalytics/")
  
    source("processTrip.R")
    source("Processors/rawTripProcessor.R")
    source("Processors/extractEventsProcessor.R")
  
    while(TRUE) {
  
      processTrip("raw_data.unprocessed_trip_t", rawTripProcessor)
      processTrip("trip_data.unprocessed_trip_t", extractEventsProcessor)
      Sys.sleep(5)
  
    }
  })
  
  quit(save = "no")
}
