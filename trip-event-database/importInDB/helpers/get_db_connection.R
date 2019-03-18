library(DBI)
library(tidyverse)

get_db_connection <- function() {

  # pwd <- read_lines("docker/db.pwd") %>% str_replace("^.+=", "")

  dbConnect(RPostgres::Postgres(),
            dbname = "tripdb",
            # host = "localhost",
            host = "ldma.us-east-2.elasticbeanstalk.com",
            port = 17171,
            user = "postgres",
            password = "Hc3spD5MxuNcXu2v9#-PwpMZTm")

}
