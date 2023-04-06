defmodule FoodTruckApi.Resolve do
  @moduledoc """
  GraphQL resolver module
  """
  alias FoodTruck.Directory
  alias FoodTruck.Schemas.FoodTruck

  @spec food_trucks(map(), map(), map()) :: {:ok, [FoodTruck.t()]}
  def food_trucks(_, _, _) do
    {:ok, Directory.list_food_trucks()}
  end
end
