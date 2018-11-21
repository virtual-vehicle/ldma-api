defmodule AegisApiWeb.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:trip_id, :binary_id, autogenerate: true}
      @foreign_key_type :binary_id
    end
  end
end

defmodule AegisApiWeb.Trip do
    use AegisApiWeb.Schema
    @derive {Poison.Encoder, only: [:start_position_name,:end_position_name, :distance, :duration, :start_at]}
    @schema_prefix "trip_data"

    schema "trip_t" do
      # field :trip_id, :binary_id
      field :beagle_id, :integer
      field :vehicle_id, :integer
      field :driver_id, :integer
      field :start_position_name, :string
      field :end_position_name, :string
      field :distance, :float
      field :duration, :float
      field :start_at, :naive_datetime
    end
end


