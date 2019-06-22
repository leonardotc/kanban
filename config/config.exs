# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kanbawl,
  ecto_repos: [Kanbawl.Repo]

# Configures the endpoint
config :kanbawl, KanbawlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5BcsXEa5CQyswybdXpFtworGlQjVGU+G2fLJng0UbT5z/Aa0my1paAaRcOgtsHvn",
  render_errors: [view: KanbawlWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kanbawl.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
