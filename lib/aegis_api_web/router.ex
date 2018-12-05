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

    get "/trips", TripController, :show
    get "/measurements", MeasurementController, :show
    get "/events", EventController, :show
    get "/drivers", DriverController, :show
  end

  scope "/", AegisApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

end
