library(tidyverse)
library(DBI)
library(ssh)


getDBConnection <- function() {
  
  session <- ssh_connect(host="ubuntu@ec2-3-17-39-139.us-east-2.compute.amazonaws.com", 
                         keyfile = "C:/Users/marijadjokicpetrovic/Documents/cis_aws_keys/cis_cloud_private_key_open_ssh.ppk")
  
  #pwd <- read_lines("../db.pwd") %>% str_replace("^.+=", "")

  dbConnect(RPostgres::Postgres(),
            dbname = "tripdb",
            host = "localhost",
            port = 5432,
            user = "postgres",
            password = "postgres")
  #print(session)

}



