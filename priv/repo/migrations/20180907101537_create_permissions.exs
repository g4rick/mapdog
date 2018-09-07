defmodule Mapdog.Repo.Migrations.CreatePermissions do
  use Ecto.Migration

  def change do
    create table(:permissions) do
      add :name, :string
      add :type, :string
      add :type_des, :string
      add :description, :string

      timestamps()
    end

  end
end
