defmodule Ashworld.Repo do
  use Ecto.Repo,
    otp_app: :ashworld,
    adapter: Ecto.Adapters.SQLite3
end
