defmodule Mapdog.Repo.Migrations.CreateUserSensitive do
  use Ecto.Migration

  def change do
    create table(:user_sensitives) do
      add :email, :string
      add :mobile, :string
      add :user_name, :string
      add :user_id, references(:users, column: :user_id)
      add :verify_account_type, :string
      add :verify_account, :string
      add :password, :string

      timestamps()
    end
  end
end
