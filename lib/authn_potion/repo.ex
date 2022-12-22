defmodule AuthnPotion.Repo do
  use Ecto.Repo,
    otp_app: :authn_potion,
    adapter: Ecto.Adapters.Postgres
end
