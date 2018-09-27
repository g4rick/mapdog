defmodule Mapdog.Repo.Migrations.CreateUserAuths do
  use Ecto.Migration

  def change do
    create table(:user_auths) do
      add :user_id, references(:users, column: :user_id)
      add :identity_type, :string
      add :identifier, :string
      add :access_token, :string
      
      timestamps()
    end
  end
end
