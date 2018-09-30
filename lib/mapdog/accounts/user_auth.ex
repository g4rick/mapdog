defmodule Mapdog.Accounts.UserAuth do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mapdog.Accounts.{User}

  schema "user_auths" do
    field :identity_type, :string
    field :identifier, :string
    field :access_token, :string

    belongs_to :user_id, User

    timestamps()
  end

  @doc false
  def changeset(user_auth, attrs) do
    user_auth
    |> cast(attrs, [:identity_type, :identifier, :access_token])
    |> validate_required([:identity_type, :identifier])
  end
end
