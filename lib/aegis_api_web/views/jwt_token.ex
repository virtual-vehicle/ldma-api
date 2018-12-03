defmodule AegisApiWeb.DriverView do
  use AegisApiWeb, :view

  def render("jwt.json", %{jwt: jwt, username: username}) do
    %{auth_token: jwt, username: username}
  end
end
