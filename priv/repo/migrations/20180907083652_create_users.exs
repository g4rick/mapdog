defmodule Mapdog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :user_name, :string
      add :password, :string
      add :mobile, :integer
      add :sex, :string
      add :real_name, :string
      add :age, :integer, default: 0
      add :state, :integer
      add :last_login, :utc_datetime
      add :verify_account_type, :string
      add :verify_account, :string
      add :avatar, :string

      add :role, references(:users)

      timestamps()
    end

  end
end
