defmodule FoodTruck.Directory do
  @moduledoc """
  Directory context for managing and querying food truck data
  """

  import Ecto.Query

  alias FoodTruck.Repo
  alias FoodTruck.Schemas.FoodTruck

  @spec create_food_truck(map()) :: {:ok, FoodTruck.t()} | {:error, atom()}
  def create_food_truck(attrs \\ %{}) do
    %FoodTruck{}
    |> FoodTruck.changeset(attrs)
    |> Repo.insert()
  end

  @spec search_food_trucks(map()) :: [FoodTruck]
  def search_food_trucks(%{food_items: food_items}) do
    match = "%#{food_items}%"
    Repo.all(from(ft in FoodTruck, where: ilike(ft.food_items, ^match)))
  end

  def search_food_trucks(_) do
    Repo.all(FoodTruck)
  end
end
