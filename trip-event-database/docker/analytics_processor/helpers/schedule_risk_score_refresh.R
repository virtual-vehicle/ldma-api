library(DBI)

source("docker/analytics_processor/helpers/get_db_connection.R")

schedule_rsik_score_refresh <- function() {
 
  con <- get_db_connection()
  
  dbExecute(con, "CREATE EXTENSION IF NOT EXISTS pg_cron CASCADE;")
  
  schedule <- "0 */1 * * *"
  cmd <- "REFRESH MATERIALIZED VIEW risk_score_config.risk_score_mv"
  
  
  ## if we have already something scheduled remove it
  ## this way new commands and schedules are always appplied cleanly
  try({
    
    pk_sched <- dbGetQuery(con, "SHOW dbanalytics.pk_risk_score_sched;")
    
    if (nrow(pk_sched) == 1 &&
        pk_sched$dbanalytics.pk_risk_score_sched != "") {
      dbExecute(con, paste0("SELECT cron.unschedule(", pk_sched$dbanalytics.pk_risk_score_sched,");"))
    }
  })
  
  ## set new schedule and store pk in DB environment variable
  new_pk <- dbGetQuery(con,
                       paste0("SELECT cron.schedule('", schedule, "', $$", cmd, "$$);"))
  
  
  dbExecute(con, paste0("ALTER DATABASE tripdb SET dbanalytics.pk_risk_score_sched=", new_pk$schedule, ";"))
  
  
}