sql_str_quote <- function(x) {

  if (inherits(x, "POSIXt")) {

    x <- format(x, "%F %H:%M:%OS6")

  }

  paste0("'", x, "'")

}
