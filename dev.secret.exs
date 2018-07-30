Use Mix.Config

config :chat, Chat.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "admin",
  password: "",