defmodule Weather.Locations.Capital do
  use Ecto.Schema
  import Ecto.Changeset

  schema "capitals" do
    field :name, :string
    has_one :country, Weather.Locations.Country

    timestamps()
  end

  @doc false
  def changeset(capital, attrs) do
    capital
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> put_assoc(:country, attrs)
  end
end
