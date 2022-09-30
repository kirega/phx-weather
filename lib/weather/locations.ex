defmodule Weather.Locations do
  @moduledoc """
  The Locations context.
  """

  import Ecto.Query, warn: false
  alias Weather.Repo

  alias Weather.Locations.Country

  @doc """
  Returns the list of countries.

  ## Examples

      iex> list_countries()
      [%Country{}, ...]

  """
  def list_countries do
    Repo.all(Country)
  end

  @doc """
  Gets a single country.

  Raises `Ecto.NoResultsError` if the Country does not exist.

  ## Examples

      iex> get_country!(123)
      %Country{}

      iex> get_country!(456)
      ** (Ecto.NoResultsError)

  """
  def get_country!(id), do: Repo.get!(Country, id)

  @doc """
  Creates a country.

  ## Examples

      iex> create_country(%{field: value})
      {:ok, %Country{}}

      iex> create_country(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_country(attrs \\ %{}) do
    %Country{}
    |> Country.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a country.

  ## Examples

      iex> update_country(country, %{field: new_value})
      {:ok, %Country{}}

      iex> update_country(country, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_country(%Country{} = country, attrs) do
    country
    |> Country.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a country.

  ## Examples

      iex> delete_country(country)
      {:ok, %Country{}}

      iex> delete_country(country)
      {:error, %Ecto.Changeset{}}

  """
  def delete_country(%Country{} = country) do
    Repo.delete(country)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking country changes.

  ## Examples

      iex> change_country(country)
      %Ecto.Changeset{data: %Country{}}

  """
  def change_country(%Country{} = country, attrs \\ %{}) do
    Country.changeset(country, attrs)
  end

  alias Weather.Locations.Capital

  @doc """
  Returns the list of capitals.

  ## Examples

      iex> list_capitals()
      [%Capital{}, ...]

  """
  def list_capitals do
    Repo.all(Capital)
  end

  @doc """
  Gets a single capital.

  Raises `Ecto.NoResultsError` if the Capital does not exist.

  ## Examples

      iex> get_capital!(123)
      %Capital{}

      iex> get_capital!(456)
      ** (Ecto.NoResultsError)

  """
  def get_capital!(id), do: Repo.get!(Capital, id)

  @doc """
  Creates a capital.

  ## Examples

      iex> create_capital(%{field: value})
      {:ok, %Capital{}}

      iex> create_capital(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_capital(attrs \\ %{}) do
    %Capital{}
    |> Capital.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a capital.

  ## Examples

      iex> update_capital(capital, %{field: new_value})
      {:ok, %Capital{}}

      iex> update_capital(capital, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_capital(%Capital{} = capital, attrs) do
    capital
    |> Capital.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a capital.

  ## Examples

      iex> delete_capital(capital)
      {:ok, %Capital{}}

      iex> delete_capital(capital)
      {:error, %Ecto.Changeset{}}

  """
  def delete_capital(%Capital{} = capital) do
    Repo.delete(capital)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking capital changes.

  ## Examples

      iex> change_capital(capital)
      %Ecto.Changeset{data: %Capital{}}

  """
  def change_capital(%Capital{} = capital, attrs \\ %{}) do
    Capital.changeset(capital, attrs)
  end
end
