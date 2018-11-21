defmodule AegisApiWeb.TripController do
  use AegisApiWeb, :controller

  def pretty_json(conn, data) do
    conn
    |> Plug.Conn.put_resp_header("content-type", "application/json; charset=utf-8")
    |> Plug.Conn.send_resp(200, Poison.encode!(data, pretty: true))
  end

  def index(conn, _params) do
    trips = AegisApiWeb.Trip |> AegisApi.Repo.all
    IO.inspect trips
    pretty_json(conn, trips)
  end
end
