defmodule Mapdog.Repo.Migrations.CreateRoles do
  use Ecto.Migration

  def change do
    create table(:roles) do
      add :name, :string
      add :description, :string
      add :permissions, :string

      timestamps()
    end

  end
end
