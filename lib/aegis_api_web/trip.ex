defmodule AegisApiWeb.Trip do
    use Ecto.Schema

    @derive {Poison.Encoder, only: [:trip_id, :beagle_id, :vehicle_id, :driver_id, :start_position_name, :end_position_name, :distance, :duration, :start_at]} #choose data to be shown
    @schema_prefix "trip_data"

    @primary_key {:trip_id, :binary_id, autogenerate: true}
    schema "trip_t" do
      belongs_to :driver_t, AegisApiWeb.Driver, foreign_key: :driver_id, references: :driver_id, define_field: false
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


