defmodule AegisApiWeb.Router do
  use AegisApiWeb, :router

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

  scope "/", AegisApiWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "api/v1/trips", TripController, :index
    get "api/v1/measurements", MeasurementController, :index
    get "api/v1/events", EventController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", AegisApiWeb do
  #   pipe_through :api
  # end
end
