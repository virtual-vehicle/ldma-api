library(leaflet)
library(tidyverse)
library(DBI)
library(dbplyr)
library(rpostgis)

get_db_connection <- function() {
  
  # pwd <- read_lines("docker/db.pwd") %>% str_replace("^.+=", "")
  
  dbConnect(RPostgres::Postgres(),
            dbname = "tripdb",
            #host = "localhost",
            host = "ldma.us-east-2.elasticbeanstalk.com",
            port = 17171,
            user = "postgres",
            password = "Hc3spD5MxuNcXu2v9#-PwpMZTm")
  
}


id <- "5d2a4ca3-23df-11e9-87b7-b707ce6807b0"


meas <- tbl(con, in_schema("trip_data", "measurement_t"))

dbGetQuery(con,
           paste0("SELECT ST_X(gps_position::geometry) AS longitude, " ,
                         "ST_Y(gps_position::geometry) AS latitude ",
                  "FROM trip_data.measurement_t ",
                  "WHERE trip_id = '", id, "' ",
                  "ORDER BY measured_at ASC;")) %>% 
  leaflet() %>% 
  addTiles() %>% 
  addPolylines(lng=~longitude, lat=~latitude)



dbGetQuery(con,
           "SELECT 
 ST_DumpPoints(
           ST_Simplify(
           ST_MakeLine(
           ARRAY(SELECT gps_position::geometry 
           FROM trip_data.measurement_t 
           WHERE trip_id = '5d2a4ca8-23df-11e9-87b7-b707ce6807b0' 
           ORDER BY measured_at ASC)
           ),
           0.0001
           )
);") %>% 
  as_tibble()

test <- 
  dbGetQuery(con,
"SELECT 
  ST_AsText(
          ST_Simplify(
          ST_MakeLine(
          ARRAY(SELECT gps_position::geometry 
          FROM trip_data.measurement_t 
          WHERE trip_id = '5d2a4ca8-23df-11e9-87b7-b707ce6807b0' 
          ORDER BY measured_at ASC)
          ),
          0.0001
          ));") %>% 
  rgeos::readWKT()


leaflet(test) %>% 
  addTiles() %>% 
  addPolylines()
