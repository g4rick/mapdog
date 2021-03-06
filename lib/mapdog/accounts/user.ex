defmodule Mapdog.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mapdog.Accounts.{Role, Credential}


  schema "users" do
    field :user_name, :string
    field :password, :string
    field :mobile, :integer
    field :sex, :string
    field :real_name, :string
    field :age, :integer, default: 0
    field :state, :integer
    field :last_login, :utc_datetime
    field :verify_account_type, :string
    field :verify_account, :string
    field :avatar, :string

    has_one :credential, Credential

    belongs_to :role, Role

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:user_name, :password])
    |> validate_required([:user_name, :password])
  end
end
