defmodule Weather.Locations.Country do
  use Ecto.Schema
  import Ecto.Changeset
  alias Weather.Locations.Capital

  schema "countries" do
    field :name, :string

    belongs_to :capital, Capital
    timestamps()
  end

  @doc false
  def changeset(country, attrs) do
    country
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> create_capital(attrs)
  end

  def update_changeset(country, attrs) do
    country
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> update_capital(attrs)
  end

  def create_capital(%Ecto.Changeset{valid?: true}, changeset, attrs) do
    # capital = attrs |> Map.get(:capital)

    changeset
    |> cast_assoc(:capital, attrs)
  end

  def create_capital(changeset, _attrs) do
    changeset
  end

  def update_capital(%Ecto.Changeset{valid?: true} = changeset, attrs) do
    capital = changeset |> get_field(:capital)

    changeset
    |> put_assoc(:capital, Capital.changeset(capital, attrs |> Map.get(:capital)))
  end

  def update_capital(changeset, _attrs) do
    changeset
  end
end
