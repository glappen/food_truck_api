defmodule FoodTruck.Directory do
  @moduledoc """
  Directory context for managing and querying food truck data
  """

  alias FoodTruck.Repo
  alias FoodTruck.Schemas.FoodTruck

  @spec create_food_truck(map()) :: {:ok, FoodTruck.t()} | {:error, atom()}
  def create_food_truck(attrs \\ %{}) do
    %FoodTruck{}
    |> FoodTruck.changeset(attrs)
    |> Repo.insert()
  end

  @spec list_food_trucks(keyword()) :: [FoodTruck]
  def list_food_trucks(filter \\ []) do
    Repo.get_by(FoodTruck, filter)
  end
end
