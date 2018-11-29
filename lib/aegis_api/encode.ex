defimpl Poison.Encoder, for: Any do
  def encode(%{__struct__: App.Models.Task} = struct, options) do
    struct =
      if struct.geom do
          {lon, lat} =  struct.geom.coordinates
          %{struct | lon: lon, lat: lat}
      else
          struct
      end
      encode_model(struct, options)
  end

  def encode(%{__struct__: _} = struct, options) do
      encode_model(struct, options)
  end

  def encode({lon, lat}, options) when is_float(lon) and is_float(lat) do
      %{lon: lon, lat: lat}
      |> sanitize_map()
      |> Poison.Encoder.Map.encode(options)
  end

  defp encode_model(model, options) do
      model
      |> Map.from_struct()
      |> sanitize_map()
      |> Poison.Encoder.Map.encode(options)
  end

  defp sanitize_map(map) do
      map
      |> Enum.filter(
          fn({_, %Ecto.Association.NotLoaded{}}) -> false
          ({:__meta__, _}) -> false
          ({:__struct__, _}) -> false
          ({_, _}) -> true
         end)
  |> Map.new()
  end
end
