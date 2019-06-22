use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :kanbawl, KanbawlWeb.Endpoint,
  secret_key_base: "gm0FNHC4iJCUHl0d1QREAkRcde99qA3k2D8CjUFXQVkftjtciRAEEYVc0WICJpJW"

# Configure your database
config :kanbawl, Kanbawl.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "kanbawl_prod",
  pool_size: 15
