defmodule Mapdog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :user_name, :string
      add :password, :string

      timestamps()
    end

  end
end
