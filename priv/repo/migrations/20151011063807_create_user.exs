defmodule Sandbox.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :permalink, :text
    end
  end
end
