defmodule AegisApiWeb.DriverView do
  use AegisApiWeb, :view

  def render("jwt.json", %{jwt: jwt}) do
    %{jwt: jwt}
  end
end
