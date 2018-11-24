defmodule AegisApiWeb.EventController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    events = AegisApiWeb.Event |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, events)
  end

  def show(conn, %{"id" => id}) do
    event = AegisApiWeb.Event |> AegisApi.Repo.get_by(event_id: id)
    AegisApiWeb.Helper.pretty_json(conn, event)
  end
end
