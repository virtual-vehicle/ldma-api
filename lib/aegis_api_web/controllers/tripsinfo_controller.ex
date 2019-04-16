defmodule AegisApiWeb.TripsInfoController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    trips = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: count(t))
    distance = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: sum(t.distance)) |> Float.round(2)
    totaltime = AegisApi.Repo.one(from t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: sum(t.duration)) |> Float.round(2)
    accelartions = AegisApi.Repo.one(from e in AegisApiWeb.Event, where: e.driver_id == ^driver.driver_id and e.event_type == "ACCELERATION", select: count(e))
    brakes = AegisApi.Repo.one(from e in AegisApiWeb.Event, where: e.driver_id == ^driver.driver_id and e.event_type == "BRAKE", select: count(e))
    standstills = AegisApi.Repo.one(from e in AegisApiWeb.Event, where: e.driver_id == ^driver.driver_id and e.event_type == "STANDSTILL", select: count(e))
    events = accelartions + brakes + standstills
    driver_score = AegisApi.Repo.one(from r in AegisApiWeb.Ranking, where: r.driver_id == ^driver.driver_id, select: r.driver_score) |> Decimal.round(2)
    conn |> render("tripsinfo.json", trips: trips, events: events, distance: distance, totaltime: totaltime, accelartions: accelartions, brakes: brakes, standstills: standstills, driver_score: driver_score)
  end
end
