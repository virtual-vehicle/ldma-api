defmodule AegisApiWeb.EventController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    events = AegisApiWeb.Event |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, events)
  end
end
