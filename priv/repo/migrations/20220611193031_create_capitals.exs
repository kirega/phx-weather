defmodule Weather.Repo.Migrations.CreateCapitals do
  use Ecto.Migration

  def change do
    create table(:capitals) do
      add :name, :string

      timestamps()
    end
  end
end
