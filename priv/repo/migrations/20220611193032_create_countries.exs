defmodule Weather.Repo.Migrations.CreateCountries do
  use Ecto.Migration

  def change do
    create table(:countries) do
      add :name, :string
      add :capital_id, references(:capitals)

      timestamps()
    end
  end
end
