defmodule Mapdog.Accounts.Permission do
  use Ecto.Schema
  import Ecto.Changeset


  schema "permissions" do
    field :description, :string
    field :name, :string
    field :type, :string
    field :type_des, :string

    many_to_many :roles, Mapdog.Accounts.Role, join_through: "roles_permissions"

    timestamps()
  end

  @doc false
  def changeset(permission, attrs) do
    permission
    |> cast(attrs, [:name, :type, :type_des, :description])
    |> validate_required([:name, :type, :type_des, :description])
  end
end
