defmodule FoodTruckApi.Resolve do
  @moduledoc """
  GraphQL resolver module
  """
  alias FoodTruck.Directory
  alias FoodTruck.Schemas.FoodTruck

  @spec search_food_trucks(map(), map(), map()) :: {:ok, [FoodTruck.t()]}
  def search_food_trucks(_, params, _) do
    {:ok, Directory.search_food_trucks(params)}
  end
end
