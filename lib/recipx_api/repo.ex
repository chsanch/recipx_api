defmodule RecipxApi.Repo do
  use Ecto.Repo,
    otp_app: :recipx_api,
    adapter: Ecto.Adapters.Postgres
end
