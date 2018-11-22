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

  scope "/api/v1" do
    pipe_through :browser

    resources "/trips", AegisApiWeb.TripController
    resources "/measurements", AegisApiWeb.MeasurementController
    resources "/events", AegisApiWeb.EventController

  end

  scope "/", AegisApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", AegisApiWeb do
  #   pipe_through :api
  # end
end
