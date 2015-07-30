use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :coinos, Coinos.Endpoint,
  secret_key_base: "H3GP8EfUFs7kjdLMY/K6CdrZbP57VybhJghKm83cR+/eP0RnINiQb1krHsmtJTcz"

# Configure your database
config :coinos, Coinos.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coinos_prod",
  size: 20 # The amount of database connections in the pool
