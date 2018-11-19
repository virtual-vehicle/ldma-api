defmodule AegisApiWeb.PageController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
