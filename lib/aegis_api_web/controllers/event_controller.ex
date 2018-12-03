defmodule AegisApiWeb.EventController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    events = AegisApiWeb.Event |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, events)
  end

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    events = from(e in AegisApiWeb.Event, join: t in AegisApiWeb.Trip, on: e.trip_id == t.trip_id, where: t.driver_id == ^driver.driver_id, select: e) |> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, events)
 end

end
