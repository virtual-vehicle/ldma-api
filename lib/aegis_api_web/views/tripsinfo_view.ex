defmodule AegisApiWeb.TripsInfoView do
  use AegisApiWeb, :view

  def render("tripsinfo.json", %{trips: trips, events: events, distance: distance, totaltime: totaltime, accelartions: accelartions, brakes: brakes, standstills: standstills}) do
    [
      %{name: "trips", value: trips},
      %{name: "events", value: events},
      %{name: "distance", value: distance},
      %{name: "totaltime", value: totaltime},
      %{name: "accelartions", value: accelartions},
      %{name: "brakes", value: brakes},
      %{name: "standstills", value: standstills}
    ]
  end
end
