defmodule AuthnPotion.User.Credentials do
  use Ecto.Schema
  import Ecto.Changeset

  schema "credentials" do
    field :aaguid, :string
    field :authenticatorAttachment, Ecto.Enum, values: [:platform, :"cross-platform"]
    field :browser, :string
    field :clientExtensionResults, :map
    field :counter, :integer
    field :credentialBackedUp, :boolean, default: false
    field :credentialDeviceType, Ecto.Enum, values: [:singleDevice, :multyDevice]
    field :credentialId, :string
    field :credentialPublicKey, :string
    field :last_used, :naive_datetime
    field :os, :string
    field :platform, :string
    field :registered, :naive_datetime
    field :transports, {:array, :string}
    field :user_verifying, :boolean, default: false
    field :userId, :id

    timestamps()
  end

  @doc false
  def changeset(credentials, attrs) do
    credentials
    |> cast(attrs, [:credentialId, :credentialPublicKey, :counter, :aaguid, :registered, :user_verifying, :authenticatorAttachment, :transports, :browser, :os, :platform, :last_used, :credentialDeviceType, :credentialBackedUp, :clientExtensionResults])
    |> validate_required([:credentialId, :credentialPublicKey, :counter, :aaguid, :registered, :user_verifying, :authenticatorAttachment, :transports, :browser, :os, :platform, :last_used, :credentialDeviceType, :credentialBackedUp, :clientExtensionResults])
  end
end
