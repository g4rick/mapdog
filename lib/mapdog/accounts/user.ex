defmodule Mapdog.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :user_name, :string
    field :password, :string
    # fixme: sex type custom
    field :sex, :string
    field :real_name, :string
    field :age, :integer, default: 0
    field :state, :integer
    field :last_login, :utc_datetime
    field :verify_account_type, :string
    field :verify_account, :string
    field :avatar, :string
    field :mobile, :integer

    has_one :role, Mapdog.Accounts.Role

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:user_name, :password])
    |> validate_required([:user_name, :password])
  end
end
