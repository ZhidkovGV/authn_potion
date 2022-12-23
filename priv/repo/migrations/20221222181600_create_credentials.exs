defmodule AuthnPotion.Repo.Migrations.CreateCredentials do
  use Ecto.Migration

  def change do
    create table(:credentials) do
      add :credentialId, :text
      add :credentialPublicKey, :text
      add :counter, :integer
      add :aaguid, :string
      add :registered, :naive_datetime
      add :user_verifying, :boolean, default: false, null: false
      add :authenticatorAttachment, :string
      add :transports, {:array, :string}
      add :browser, :string
      add :os, :string
      add :platform, :string
      add :last_used, :naive_datetime
      add :credentialDeviceType, :string
      add :credentialBackedUp, :boolean, default: false, null: false
      add :clientExtensionResults, :map
      add :userId, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:credentials, [:userId])
  end
end
