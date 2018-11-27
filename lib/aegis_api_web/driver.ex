defmodule AegisApiWeb.Driver do
    use Ecto.Schema

    @derive {Poison.Encoder, only: [:username, :password]} #choose data to be shown
    @schema_prefix "trip_data"

    @primary_key {:driver_id, :integer, autogenerate: false}
    schema "driver_t" do
      field :username, :string
      field :password, :string
    end
end
