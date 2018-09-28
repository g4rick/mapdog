defmodule Mapdog.Accounts.UserAuth do
  use Ecto.Schema
  import Ecto.Changeset


  schema "user_auths" do
    field :identity_type, :string
    field :identifier, :string
    field :access_token, :string


    timestamps()
  end

  @doc false
  def changeset(user_auth, attrs) do
    user_auth
    |> cast(attrs, [])
    |> validate_required([])
  end
end
