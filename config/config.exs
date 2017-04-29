# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tv_controller,
  ecto_repos: [TvController.Repo]

# Configures the endpoint
config :tv_controller, TvController.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LRtAKQu5juKo42wetipRI5t5qtQ7n17waXovQ25RyG4Zpcuojv67BbdwcRWrbCCr",
  render_errors: [view: TvController.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TvController.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
