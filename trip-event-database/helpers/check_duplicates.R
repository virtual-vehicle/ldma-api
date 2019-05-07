
check_duplicates <- function(trip_data, trip_identifier = NULL){
     
   # collect the indicies of duplicated rows if exist
   duplicate_inds <- which(duplicated(trip_data[c('dttm', 'signal_name')]))
   
   # Release a warning of duplicates
   n_dups <- length(duplicate_inds)
   if (n_dups > 0){
     
     warning_msg <- paste0(n_dups, " duplicates found in trip")
     if (!is.null(trip_identifier)) {
       warning_msg <- paste0(warning_msg, " ", trip_identifier)
     }
     warning_msg <- paste0(warning_msg, "!")
     
     warning(warning_msg, call. = FALSE)
   }
   
   return(duplicate_inds)
 
}



