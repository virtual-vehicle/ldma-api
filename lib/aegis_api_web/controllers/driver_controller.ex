defmodule AegisApiWeb.DriverController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    drivers = AegisApiWeb.Driver |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, drivers)
  end

  def show(conn, %{"id" => id}) do
    driver = AegisApiWeb.Driver |> AegisApi.Repo.get_by(driver_id: id)
    AegisApiWeb.Helper.pretty_json(conn, driver)
  end

  # ecto cheatsheet
  # https://devhints.io/phoenix-ecto
end
