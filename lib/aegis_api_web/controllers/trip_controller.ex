defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    trips = AegisApiWeb.Trip |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    trips = from(t in AegisApiWeb.Trip, where: t.driver_id == ^driver.driver_id, select: t)|> AegisApi.Repo.all()
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end
end
