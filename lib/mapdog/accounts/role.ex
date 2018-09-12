defmodule Mapdog.Accounts.Role do
  use Ecto.Schema
  import Ecto.Changeset


  schema "roles" do
    field :description, :string
    field :name, :string

    has_many :users, Mapdog.Accounts.User
    many_to_many :permissions, Mapdog.Accounts.Permission, join_through: "roles_permissions"

    timestamps()
  end

  @doc false
  def changeset(role, attrs) do
    role
    |> cast(attrs, [:name, :description, :permissions])
    |> validate_required([:name, :description, :permissions])
  end
end
