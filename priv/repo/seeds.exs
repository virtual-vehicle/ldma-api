# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     AegisApi.Repo.insert!(%AegisApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# deleting data
# delete data from  Table "measurement_t"
measurement= AegisApiWeb.Measurement |> AegisApi.Repo.all
Enum.each(measurement, fn (measurement) -> AegisApi.Repo.delete(measurement) end)

# delete data from  Table "event_t"
event= AegisApiWeb.Event |> AegisApi.Repo.all
Enum.each(event, fn (event) -> AegisApi.Repo.delete(event) end)

# delete data from  Table "trip_t"
trip = AegisApiWeb.Trip |> AegisApi.Repo.all
Enum.each(trip, fn (trip) -> AegisApi.Repo.delete(trip) end)

# inserting data
# insert data into Table "trip_t"
trips = [
  %AegisApiWeb.Trip{beagle_id: 1, vehicle_id: 1, driver_id: 1, start_position_name: "Graz", end_position_name: "Kragujevac", distance: 700.1, duration: 7.0, start_at: ~N[2000-01-01 23:00:07]},
  %AegisApiWeb.Trip{beagle_id: 2, vehicle_id: 2, driver_id: 2, start_position_name: "Kg", end_position_name: "Raca", distance: 32.3, duration: 0.30, start_at: ~N[2001-01-01 23:00:07]},
]
Enum.each(trips, fn (trips) -> AegisApi.Repo.insert(trips) end)

trip_id = (AegisApiWeb.Trip |> AegisApi.Repo.get_by(driver_id: 1)).trip_id #used for inserting data in Tables "event_t" and "measurement_t"

# insert data into Table "event_t"
events = [
      %AegisApiWeb.Event{driver_id: 1, vehicle_id: 1, event_type: "ACCELERATION", trip_id: trip_id, start_at: ~N[2000-01-01 10:00:00], start_after: 0.0, end_at: ~N[2000-01-01 10:00:00], end_after: 0.0, duration: 0.0, event_details: %{a: 1, b: 2}},
]
Enum.each(events, fn (events) -> AegisApi.Repo.insert(events) end)

# insert data into Table "measurement_t"
measurements = [
       %AegisApiWeb.Measurement{measured_at: ~N[2000-01-01 23:00:07], trip_id: trip_id, acceleration_x: 1.5, acceleration_y: 1.0, engine_oil_temp_5c: 22.7, fuel_tank_level_2f: 700.1},
]
Enum.each(measurements, fn (measurements) -> AegisApi.Repo.insert(measurements) end)

