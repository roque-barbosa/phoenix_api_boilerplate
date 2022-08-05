defmodule LinkarApi.Repo do
  use Ecto.Repo,
    otp_app: :linkar_api,
    adapter: Ecto.Adapters.Postgres
end
