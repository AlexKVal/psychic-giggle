# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :video_stream,
  ecto_repos: [VideoStream.Repo]

# Configures the endpoint
config :video_stream, VideoStream.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MlvZyXsEUVnACthtksco14kt7vSdno4QtxtX0l8NfY+EIBxUmIM1SPr87/ozhMiR",
  render_errors: [view: VideoStream.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VideoStream.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
