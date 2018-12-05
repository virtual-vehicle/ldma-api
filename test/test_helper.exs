ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(AegisApi.Repo, :manual)

Bureaucrat.start(writer: Bureaucrat.MarkdownWriter,
  default_path: "docs/api-v1.md",
  paths: [],
  titles: [],
  env_var: "DOC"
)

ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])


defmodule AegisApi.HelperTest do
  import Ecto.Query, only: [from: 2]
  use AegisApiWeb.ConnCase

  def create_jwt_for_driver do
    # get a driver
    driver = from(d in AegisApiWeb.Driver, limit: 1) |> AegisApi.Repo.one()

    # create the token
    {:ok, token, _claims} = AegisApiWeb.Driver.token_sign_in(driver.username, "password")

    # add authorization header to request
    conn = build_conn() |> put_req_header("authorization", "Bearer #{token}")

    # pass the connection and the driver to the test
    {:ok, conn: conn}
  end
end
