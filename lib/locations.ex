defmodule Weather.Data.Locations do
  alias Weather.Locations.Country
  import Ecto.Query
  alias Weather.Repo

  def insert_country(ob) do
    Country.changeset(%Country{}, ob)
    |> Repo.insert()
  end

  def get_country(id) do
    from(c in Country, where: c.id == ^id)
    |> Repo.one()
  end
end

# m = %{capital: %{name: "Nairobi"}, name: "Kenya"}
