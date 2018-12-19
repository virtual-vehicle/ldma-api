library(DBI)
library(tidyverse)

source("Helpers/getDBConnection.R")
source("Helpers/batchInsert.R")

processTrip <- function(unprocessed_trip_table, processor) {

  # preparations --------------------------------------------

  con <- getDBConnection()

  ##rolls back any open transactions and disconnects from database
  disconnect <- function() {
    try({
      dbRollback(con)  # throws error if no open transcation on con
    },
    silent = TRUE)

    dbDisconnect(con)
  }

  ## on error (or normal exit) disconnect from the database and roll back any open transactions
  on.exit(disconnect(), add = TRUE)



  # selection of trip to process --------------------------------------------


  ## get oldest element that is not yet being processed, did not receive updates for 5min and did not already fail for 5 times
  ## mark it as being processed
  dbBegin(con)
  dbExecute(con, "SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;")


  id <- dbGetQuery(con,
                   paste0("SELECT * FROM ", unprocessed_trip_table, " ",
                          "WHERE failed_processing_attempts < 5 ",
                            "AND processing_started_at IS NULL ",
                            "AND last_update_at < NOW() - INTERVAL '5 minutes' ",
                          "ORDER BY last_update_at ASC LIMIT 1 ",
                          "FOR UPDATE SKIP LOCKED;"))

  if (nrow(id) == 0) {

    dbCommit(con)
    return(FALSE)
  }

  dbExecute(con,
            paste0("UPDATE ", unprocessed_trip_table, " ",
                   "SET processing_started_at = LOCALTIMESTAMP ",
                   "WHERE trip_id='", id$trip_id, "';"))

  dbCommit(con)


  # data processing --------------------------------------------

  data_processed <- FALSE
  try({
    data_processed <- processor(con, id)  # processor should return TRUE if processing was successful, FALSE otherwise
  })

  if (!data_processed) {
    warning("Error while processing!")
  }

  # mark trip as processed --------------------------------------------

  dbBegin(con)
  dbExecute(con, "SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;")

  ## If we cannot establish the lock immediately we retry every 0.5 secs; max 100 times
  obtained_lock <- FALSE
  new_time <- c()
  num_try <- 0

  while (!obtained_lock && num_try < 100) {

    num_try <- num_try + 1

    try({
    new_time <- dbGetQuery(con,
                           paste0("SELECT last_update_at FROM ", unprocessed_trip_table, " ",
                                  "WHERE trip_id = '", id$trip_id, "' ",
                                  "FOR UPDATE NOWAIT;"))$last_update_at
    })


    if (length(new_time > 0)) {

      obtained_lock <- TRUE

    } else {

      dbRollback(con)
      dbBegin(con)
      dbExecute(con, "SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;")
      Sys.sleep(0.5)

    }
  }


  ## if new data arrived we always reset the trip for new processing
  if (id$last_update_at != new_time) {

    dbExecute(con,
              paste0("UPDATE ", unprocessed_trip_table, " ",
                     "SET processing_started_at = DEFAULT, ",
                     "failed_processing_attempts = DEFAULT ",
                     "WHERE trip_id='", id$trip_id, "';"))

  } else {

    ## no new data arrived

    if (data_processed) {

      ## proceswsing worked -> mark as processed (delete from table)
      dbExecute(con,
                paste0("DELETE FROM ", unprocessed_trip_table, " ",
                       "WHERE trip_id = '", id$trip_id, "';" ))

    } else {

      ## processing failed -> increase error flag
      dbExecute(con,
                paste0("UPDATE ", unprocessed_trip_table, " ",
                       "SET processing_started_at = DEFAULT, ",
                       "failed_processing_attempts = ", id$failed_processing_attempts + 1L, " ",
                       "WHERE trip_id='", id$trip_id, "';"))
    }


  }

  dbCommit(con)

  return(TRUE)

}


