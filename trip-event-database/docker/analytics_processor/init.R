## allow for database startup
Sys.sleep(60)

try({

  setwd("/opt/Rscripts/")

  source("docker/analytics_processor/helpers/schedule_risk_score_refresh.R")
  source("docker/analytics_processor/process_trip.R")
  source("docker/analytics_processor/processors/extract_events_processor.R")
  source("docker/analytics_processor/processors/raw_trip_processor.R")
  
  
  ## Set up regular risk score thresholds recalculation
  schedule_rsik_score_refresh()
  

  while(TRUE) {

    process_trip("raw_data.unprocessed_trip_t", raw_trip_processor)
    process_trip("trip_data.unprocessed_trip_t", extract_events_processor)
    Sys.sleep(5)

  }
})

quit(save = "no")
