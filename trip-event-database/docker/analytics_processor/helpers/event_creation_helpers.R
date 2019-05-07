library(jsonlite)
library(tidyverse)

## return first/last non NA element
firstValid <- function(vec) vec[!is.na(vec)][1]
lastValid <- function(vec) tail(vec[!is.na(vec)], 1)

## converts a data frame with one row to JSON
createDetailJSON <- function(detail_dat) {

  detail_dat %>%
    unbox() %>%
    toJSON() %>%
    as.character()
}

newEvent <- function(driver_id, vehicle_id, event_type, trip_id, start_at, start_after,
                     start_position, start_altitude, end_at, end_after, end_position,
                     end_altitude, marker_position, event_details) {

  tibble(driver_id = driver_id,
         vehicle_id = vehicle_id,
         event_type = event_type,
         trip_id = trip_id,
         start_at = start_at,
         start_after = start_after,
         start_position = start_position,
         start_altitude = start_altitude,
         end_at = end_at,
         end_after = end_after,
         end_position = end_position,
         end_altitude = end_altitude,
         marker_position = marker_position,
         duration = end_after - start_after,
         event_details = event_details)
}


newEventTypeConstructor <- function(event_type, computeDetails, computeMarkerPos) {

  function(starti, stopi, dat, trip) {

    eventdat <- dat[starti:stopi, ]

    newEvent(driver_id = trip$driver_id,
             vehicle_id = trip$vehicle_id,
             event_type = event_type,
             trip_id = trip$trip_id,
             start_at = firstValid(eventdat$measured_at),
             start_after = firstValid(eventdat$measured_after),
             start_position = firstValid(eventdat$gps_position),
             start_altitude = firstValid(eventdat$gps_altitude),
             end_at = lastValid(eventdat$measured_at),
             end_after = lastValid(eventdat$measured_after),
             end_position = lastValid(eventdat$gps_position),
             end_altitude = lastValid(eventdat$gps_altitude),
             marker_position = computeMarkerPos(eventdat),
             event_details = computeDetails(eventdat))
  }
}


newBrakeAccConstructor <- function(event_type) {

  newEventTypeConstructor(event_type = event_type,
                          computeDetails = function(eventdat) {

                            createDetailJSON(
                              tibble(
                                start_speed = firstValid(eventdat$vehicle_speed_0d),
                                end_speed = lastValid(eventdat$vehicle_speed_0d),
                                duration = lastValid(eventdat$measured_after) - firstValid(eventdat$measured_after)) %>%
                                mutate(mean_speed_change = (end_speed - start_speed) / duration,
                                       max_acc = max(eventdat$acceleration_x, na.rm=T) * 9.81,
                                       altitude_diff = lastValid(eventdat$gps_altitude) - firstValid(eventdat$gps_altitude),
                                       length = mean(eventdat$vehicle_speed_0d, na.rm=T) * duration) %>%
                                select(-duration) ## duration was only a helper here
                            )
                          },
                          computeMarkerPos = function(eventdat) {

                            firstValid(eventdat$gps_position)

                          })
}

newBrakeEvent <- newBrakeAccConstructor("BRAKE")
newAccelerationEvent <- newBrakeAccConstructor("ACCELERATION")

newPotholeEvent <-
  newEventTypeConstructor(event_type = "POTHOLE",
                          computeDetails = function(eventdat) {

                            createDetailJSON(
                              tibble(
                                start_speed = firstValid(eventdat$vehicle_speed_0d),
                                end_speed = lastValid(eventdat$vehicle_speed_0d),
                                length = mean(eventdat$vehicle_speed_0d, na.rm=T) * (lastValid(eventdat$measured_after) - firstValid(eventdat$measured_after))
                              )
                            )
                          },
                          computeMarkerPos = function(eventdat) {

                            ## middle position
                            valid_inds <- which(!is.na(eventdat$gps_position))
                            pos <- valid_inds[floor(length(valid_inds) / 2)]
                            eventdat$gps_position[pos]

                          })

newStandstillEventConstructor <- function(brake_events) {

  newEventTypeConstructor(event_type = "STANDSTILL",
                          computeDetails = function(eventdat) {

                            ## find last brake event for reference
                            ss_start <- firstValid(eventdat$measured_after)

                            last_event <-
                              brake_events %>%
                              mutate(diff = ss_start - end_after) %>%
                              ## we look for the nearest event that ended before the standstill event
                              ## but no more than 3secs before
                              filter(diff > 0 & diff <=3) %>%
                              arrange(diff) %>%
                              slice(1) %>%
                              select(event_id)

                            if (nrow(last_event) > 0) {
                              createDetailJSON(last_event)
                            } else {
                              createDetailJSON(tibble(event_id = NA))
                            }
                          },
                          computeMarkerPos = function(eventdat) {

                            firstValid(eventdat$gps_position)

                          })

}
