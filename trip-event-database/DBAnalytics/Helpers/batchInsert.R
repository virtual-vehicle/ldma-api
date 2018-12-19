library(DBI)


batchInsert <- function(con, tablename, dat, batch_size) {

  createInsertStmt <- function(dat, tablename) {

    createValues <- function(dat) {
      dat %>%
        replace(is.na(.), "NULL") %>% # replace all NAs by the string "NULL"
        unite(values, colnames(dat), sep = ", ") %>%
        pull(values) %>%
        paste0("    (", ., ")", collapse=",\n")
    }


    paste0(
      "INSERT INTO ", tablename, "\n",
      "    (", paste0(colnames(dat), collapse = ", "), ")\n",
      "VALUES\n",
      createValues(dat), ";"
    )
  }

  n <- nrow(dat)

  if (n == 0) {

    warning("batchInsert: given data frame has no rows. Nothing inserted.")
    return()

  }

  for(i in 1:ceiling(n/batch_size)) {

    start <- min((i-1)*batch_size + 1, n)
    end <- min(i*batch_size, n)

    query <- createInsertStmt(dat[start:end, ], tablename)

    dbExecute(con, query)

    cat(paste0("\r", end, "/", n, ": ", round(end/n*100, 2), "%     "))
    flush.console()

  }
  cat("\n")

}
