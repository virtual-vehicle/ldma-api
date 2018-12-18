library(DBI)

getDBConnection <- function() {
  
  #pwd <- read_lines("../db.pwd") %>% str_replace("^.+=", "")

  dbConnect(RPostgres::Postgres(),
            dbname = "tripdb",
            host = "tripeventdb",
            port = 5432,
            user = "postgres",
            password = "postgres")

}

