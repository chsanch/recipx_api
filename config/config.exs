# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :recipx_api,
  ecto_repos: [RecipxApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :recipx_api, RecipxApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "re8HHaWecwHO9aGx0FZXtQznzc4RWuR7dVRfPdt89sjlGWiwQYUOElcA0kL8qOvA",
  render_errors: [view: RecipxApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: RecipxApi.PubSub,
  live_view: [signing_salt: "aIO7vNtb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
