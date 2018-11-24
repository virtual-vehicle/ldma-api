defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    trips = AegisApiWeb.Trip |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, trips)
  end

  def show(conn, %{"id" => id}) do
    trip = AegisApiWeb.Trip |> AegisApi.Repo.get_by(trip_id: id)
    AegisApiWeb.Helper.pretty_json(conn, trip)
  end

  # ecto cheatsheet
  # https://devhints.io/phoenix-ecto
end
