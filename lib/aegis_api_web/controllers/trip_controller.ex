defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)

    trips = from(t in AegisApiWeb.Trip, join: ts in AegisApiWeb.TripScore,
            on: t.trip_id == ts.trip_id,
            where: t.driver_id == ^driver.driver_id,
            select: %{trip_id: t.trip_id,
                      beagle_id: t.beagle_id,
                      vehicle_id: t.vehicle_id,
                      driver_id: t.driver_id,
                      start_position_name: t.start_position_name,
                      end_position_name: t.end_position_name,
                      distance: (fragment("round(?::decimal / 1000)",t.distance)), # distance in km
                      duration: (fragment("round(?::decimal / 60)",t.duration)), # duration in min
                      start_at: (fragment("select ? at time zone 'utc' at time zone 'europe/vienna' ", t.start_at)),
                      end_at: datetime_add((fragment("select ? at time zone 'utc' at time zone 'europe/vienna' ", t.start_at)), t.duration, "second"),
                      gps_track: t.simplified_gps_track,
                      accelerations: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'ACCELERATION')",t.trip_id)),
                      brakes: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'BRAKE')",t.trip_id)),
                      standstills: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'STANDSTILL')",t.trip_id)),
                      map_visible: false,
                      risk_score: ts.risk_score})|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end

  def create(conn, %{"start_date" => start_date, "end_date" => end_date}) do
    driver = Guardian.Plug.current_resource(conn)
    from_start_date = NaiveDateTime.from_iso8601!(start_date <> " " <> "00:00:00")
    to_end_date = NaiveDateTime.from_iso8601!(end_date <> " " <> "23:59:59")

    trips = from(t in AegisApiWeb.Trip, join: ts in AegisApiWeb.TripScore, on: t.trip_id == ts.trip_id,
            where: t.driver_id == ^driver.driver_id and
            t.start_at >= ^from_start_date and
            ^to_end_date >= datetime_add(t.start_at, t.duration, "second"),
            select: %{trip_id: t.trip_id,
                      beagle_id: t.beagle_id,
                      vehicle_id: t.vehicle_id,
                      driver_id: t.driver_id,
                      start_position_name: t.start_position_name,
                      end_position_name: t.end_position_name,
                      distance: (fragment("round(?::decimal / 1000)",t.distance)), # distance in km
                      duration: (fragment("round(?::decimal / 60)",t.duration)), # duration in min
                      start_at: (fragment("select ? at time zone 'utc' at time zone 'europe/vienna' ", t.start_at)),
                      end_at: datetime_add((fragment("select ? at time zone 'utc' at time zone 'europe/vienna' ", t.start_at)), t.duration, "second"),
                      gps_track: t.simplified_gps_track,
                      accelerations: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'ACCELERATION')",t.trip_id)),
                      brakes: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'BRAKE')",t.trip_id)),
                      standstills: (fragment("(select count(*) from trip_data.event_t e where e.trip_id=? and e.event_type = 'STANDSTILL')",t.trip_id)),
                      map_visible: false,
                      risk_score: ts.risk_score} )|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end
end
