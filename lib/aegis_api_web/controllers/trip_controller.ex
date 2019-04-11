defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)

    accelerations = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and e.event_type == "ACCELERATION", select: count(e)) |> AegisApi.Repo.one()
    brakes = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and e.event_type == "BRAKE", select: count(e)) |> AegisApi.Repo.one()
    standstills = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and e.event_type == "STANDSTILL", select: count(e)) |> AegisApi.Repo.one()

    trips = from(t in AegisApiWeb.Trip, join: ts in AegisApiWeb.TripScore,
            on: t.trip_id == ts.trip_id,
            where: t.driver_id == ^driver.driver_id,
            select: %{trip_id: t.trip_id,
                      beagle_id: t.beagle_id,
                      vehicle_id: t.vehicle_id,
                      driver_id: t.driver_id,
                      start_position_name: t.start_position_name,
                      end_position_name: t.end_position_name,
                      distance: t.distance,
                      duration: t.duration,
                      start_at: t.start_at,
                      end_at: datetime_add(t.start_at, t.duration, "second"),
                      gps_track: t.simplified_gps_track,
                      accelerations: type(^accelerations, :integer),
                      brakes: type(^brakes, :integer),
                      standstills: type(^standstills, :integer),
                      map_visible: false,
                      risk_score: ts.risk_score})|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end

  def create(conn, %{"start_date" => start_date, "end_date" => end_date}) do
    driver = Guardian.Plug.current_resource(conn)
    from_start_date = NaiveDateTime.from_iso8601!(start_date <> " " <> "00:00:00")
    to_end_date = NaiveDateTime.from_iso8601!(end_date <> " " <> "23:59:59")

    accelerations = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and t.start_at >= ^from_start_date and ^to_end_date >= datetime_add(t.start_at, t.duration, "second") and e.event_type == "ACCELERATION", select: count(e)) |> AegisApi.Repo.one()
    brakes = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and t.start_at >= ^from_start_date and ^to_end_date >= datetime_add(t.start_at, t.duration, "second") and e.event_type == "BRAKE", select: count(e)) |> AegisApi.Repo.one()
    standstills = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: t.trip_id == e.trip_id, where: e.driver_id == ^driver.driver_id and t.start_at >= ^from_start_date and ^to_end_date >= datetime_add(t.start_at, t.duration, "second") and e.event_type == "STANDSTILL", select: count(e)) |> AegisApi.Repo.one()

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
                      distance: t.distance,
                      duration: t.duration,
                      start_at: t.start_at,
                      end_at: datetime_add(t.start_at, t.duration, "second"),
                      gps_track: t.simplified_gps_track,
                      accelerations: type(^accelerations, :integer),
                      brakes: type(^brakes, :integer),
                      standstills: type(^standstills, :integer),
                      map_visible: false,
                      risk_score: ts.risk_score} )|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end
end
