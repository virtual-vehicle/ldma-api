defmodule AegisApi.Repo do
  use Ecto.Repo,
    otp_app: :aegis_api,
    adapter: Ecto.Adapters.Postgres
end
