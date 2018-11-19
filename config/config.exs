# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :aegis_api,
  ecto_repos: [AegisApi.Repo]

# Configures the endpoint
config :aegis_api, AegisApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "x7dN+0PArLgS37SwHa61RDj8cmLyoY2A+G7qUfNhM1GYjkmsO8qNzU8/oaJBptot",
  render_errors: [view: AegisApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AegisApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
