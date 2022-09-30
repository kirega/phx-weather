defmodule Weather.LocationsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Weather.Locations` context.
  """

  @doc """
  Generate a country.
  """
  def country_fixture(attrs \\ %{}) do
    {:ok, country} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Weather.Locations.create_country()

    country
  end

  @doc """
  Generate a capital.
  """
  def capital_fixture(attrs \\ %{}) do
    {:ok, capital} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Weather.Locations.create_capital()

    capital
  end
end
