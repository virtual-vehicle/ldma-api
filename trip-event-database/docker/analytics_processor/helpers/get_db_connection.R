library(DBI)

get_db_connection <- function() {

  dbConnect(RPostgres::Postgres(),
            dbname = "tripdb",
            host = "tripeventdb",
            port = 5432,
            user = "postgres",
            password = Sys.getenv("POSTGRES_PASSWORD"))

}
