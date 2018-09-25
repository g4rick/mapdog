defmodule Mapdog.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  @doc """
  用户基础表
  包含基础信息，前端展示信息
  不包含一切登录授权相关信息
  """

  def change do
    create table(:users) do
      # user_id 需要一个特殊的type 类似UID000001 然后自增
      add :user_id, :integer
      add :nick, :string
      add :avatar, :string
      add :sex, :string
      add :real_name, :string
      add :age, :integer
      add :state, :integer
      add :state_des, :string
      add :last_login, :utc_datetime

      timestamps()
    end
  end
end
