use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :account_service, AccountServiceWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :account_service, AccountService.Repo,
  username: "root",
  password: "",
  database: "beetrack_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
