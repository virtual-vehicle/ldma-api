defmodule AegisApiWeb.Router do
  use AegisApiWeb, :router
  alias AegisApi.Guardian

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :jwt_authenticated do
    plug Guardian.AuthPipeline
  end

  scope "/api/v1", AegisApiWeb do
    pipe_through :api

    post "/sign_in", DriverController, :sign_in
  end

  scope "/api/v1", AegisApiWeb do
    pipe_through [:api, :jwt_authenticated]

    resources "/trips", TripController
    get "/measurements", MeasurementController, :show
    get "/events", EventController, :show
    get "/drivers", DriverController, :show
    get "/rankings", RankingInfoController, :index
    get "/trips_info", TripsInfoController, :show
    get "/graph_tripscore", GraphTripScoreController, :index

  end

  scope "/", AegisApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

end
