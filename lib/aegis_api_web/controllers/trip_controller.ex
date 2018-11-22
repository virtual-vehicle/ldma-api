defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    trips = AegisApiWeb.Trip |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end
end
