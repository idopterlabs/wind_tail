defmodule WindTail.Repo do
  use Ecto.Repo,
    otp_app: :wind_tail,
    adapter: Ecto.Adapters.Postgres
end
