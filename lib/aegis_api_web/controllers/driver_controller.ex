defmodule AegisApiWeb.DriverController do
  use AegisApiWeb, :controller

  def index(conn, _params) do
    drivers = AegisApiWeb.Driver |> AegisApi.Repo.all
    AegisApiWeb.Helper.pretty_json(conn, drivers)
  end

  # def show(conn, %{"id" => id}) do
  #   driver = AegisApiWeb.Driver |> AegisApi.Repo.get_by(driver_id: id)
  #   AegisApiWeb.Helper.pretty_json(conn, driver)
  # end

  def show(conn, _params) do
    driver = Guardian.Plug.current_resource(conn)
    AegisApiWeb.Helper.pretty_json(conn, driver)
 end

  def sign_in(conn, %{"username" => username, "password" => password}) do
    case AegisApiWeb.Driver.token_sign_in(username, password) do
      {:ok, token, _claims} ->
        conn |> render("jwt.json", jwt: token)
      _ ->
        {:error, :unauthorized}
    end
  end
end
