Postgrex.Types.define(AegisApiWeb.PostgresTypes,
    [Geo.PostGIS.Extension] ++ Ecto.Adapters.Postgres.extensions(),
    json: Poison)
