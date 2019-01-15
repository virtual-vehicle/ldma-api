defmodule AegisApiWeb.TripsInfoController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    tripsinfo = AegisApiWeb.Trip |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, tripsinfo)
  end

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    trips = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: count(t))
    events = AegisApi.Repo.one(from e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: e.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id, select: count(e))
    distance = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: sum(t.distance))
    totaltime = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: sum(t.duration))
    accelartions = AegisApi.Repo.one(from e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: e.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id and e.event_type == "ACCELERATION", select: count(e))
    brakes = AegisApi.Repo.one(from e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: e.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id and e.event_type == "BRAKE", select: count(e))
    standstills = AegisApi.Repo.one(from e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: e.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id and e.event_type == "STANDSTILL", select: count(e))

    conn |> render("tripsinfo.json", trips: trips, events: events, distance: distance, totaltime: totaltime, accelartions: accelartions, brakes: brakes, standstills: standstills)
  end
end
