defmodule AegisApiWeb.Schema do
  defmacro __using__(_) do
    quote do
      use Ecto.Schema
      @primary_key {:event_id, autogenerate: true}
      @foreign_key_type :trip_id
    end
  end
end

defmodule AegisApiWeb.Trip do
    use AegisApiWeb.Schema
    @derive {Poison.Encoder, only: [:start_at, :start_position, :end_after, :end_position, :duration]}
    @schema_prefix "trip_data"

    schema "event_t" do
      field :event_id, :integer
      field :driver_id, :integer
      field :vehicle_id, :integer
      field :event_type, :
      field :start_at, :naive_datetime
      field :start_after, :float
      field :start_position, :
      field :start_altitude, :
      field :end_at, :naive_datetime
      field :end_after, :float
      field :end_position, :
      field :end_altitude, :
      field :marker_position, :
      field :duration, :float
      field :event_details, : :map
    end
end





# "event_type"	"USER-DEFINED"
# "trip_id"	"uuid"
# "start_position"	"USER-DEFINED"
# "start_altitude"	"numeric"
# "end_position"	"USER-DEFINED"
# "end_altitude"	"numeric"
# "marker_position"	"USER-DEFINED"
# "event_details"	"jsonb"
