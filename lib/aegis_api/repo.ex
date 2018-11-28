defmodule AegisApi.Repo do
  use Ecto.Repo,
    otp_app: :aegis_api,
    adapter: Ecto.Adapters.Postgres

  if Mix.env() in [:dev, :test] do
    @spec truncate(Ecto.Schema.t()) :: :ok
    def truncate(schema) do
      table_name = schema.__schema__(:source)
      schema_prefix = schema.__schema__(:prefix)
      query("TRUNCATE #{schema_prefix}.#{table_name}", [])
      :ok
    end
  end
end
