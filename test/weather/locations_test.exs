defmodule Weather.LocationsTest do
  use Weather.DataCase

  alias Weather.Locations

  describe "countries" do
    alias Weather.Locations.Country

    import Weather.LocationsFixtures

    @invalid_attrs %{name: nil}

    test "list_countries/0 returns all countries" do
      country = country_fixture()
      assert Locations.list_countries() == [country]
    end

    test "get_country!/1 returns the country with given id" do
      country = country_fixture()
      assert Locations.get_country!(country.id) == country
    end

    test "create_country/1 with valid data creates a country" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Country{} = country} = Locations.create_country(valid_attrs)
      assert country.name == "some name"
    end

    test "create_country/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Locations.create_country(@invalid_attrs)
    end

    test "update_country/2 with valid data updates the country" do
      country = country_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Country{} = country} = Locations.update_country(country, update_attrs)
      assert country.name == "some updated name"
    end

    test "update_country/2 with invalid data returns error changeset" do
      country = country_fixture()
      assert {:error, %Ecto.Changeset{}} = Locations.update_country(country, @invalid_attrs)
      assert country == Locations.get_country!(country.id)
    end

    test "delete_country/1 deletes the country" do
      country = country_fixture()
      assert {:ok, %Country{}} = Locations.delete_country(country)
      assert_raise Ecto.NoResultsError, fn -> Locations.get_country!(country.id) end
    end

    test "change_country/1 returns a country changeset" do
      country = country_fixture()
      assert %Ecto.Changeset{} = Locations.change_country(country)
    end
  end

  describe "capitals" do
    alias Weather.Locations.Capital

    import Weather.LocationsFixtures

    @invalid_attrs %{name: nil}

    test "list_capitals/0 returns all capitals" do
      capital = capital_fixture()
      assert Locations.list_capitals() == [capital]
    end

    test "get_capital!/1 returns the capital with given id" do
      capital = capital_fixture()
      assert Locations.get_capital!(capital.id) == capital
    end

    test "create_capital/1 with valid data creates a capital" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Capital{} = capital} = Locations.create_capital(valid_attrs)
      assert capital.name == "some name"
    end

    test "create_capital/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Locations.create_capital(@invalid_attrs)
    end

    test "update_capital/2 with valid data updates the capital" do
      capital = capital_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Capital{} = capital} = Locations.update_capital(capital, update_attrs)
      assert capital.name == "some updated name"
    end

    test "update_capital/2 with invalid data returns error changeset" do
      capital = capital_fixture()
      assert {:error, %Ecto.Changeset{}} = Locations.update_capital(capital, @invalid_attrs)
      assert capital == Locations.get_capital!(capital.id)
    end

    test "delete_capital/1 deletes the capital" do
      capital = capital_fixture()
      assert {:ok, %Capital{}} = Locations.delete_capital(capital)
      assert_raise Ecto.NoResultsError, fn -> Locations.get_capital!(capital.id) end
    end

    test "change_capital/1 returns a capital changeset" do
      capital = capital_fixture()
      assert %Ecto.Changeset{} = Locations.change_capital(capital)
    end
  end
end
