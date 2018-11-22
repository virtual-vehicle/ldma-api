defmodule AegisApiWeb.Helper do
  @moduledoc """
  Contains functions for the controllers.
  """

  @doc """
  Showing nice json code.
  """
  def pretty_json(conn, data) do
    conn
    |> Plug.Conn.put_resp_header("content-type", "application/json; charset=utf-8")
    |> Plug.Conn.send_resp(200, Poison.encode!(data, pretty: true))
  end
end
