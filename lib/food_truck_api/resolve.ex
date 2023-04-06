defmodule FoodTruckApi.Resolve do
  alias FoodTruck.Directory

  def food_trucks(_, _, _) do
    {:ok, Directory.list_food_trucks()}
  end
end
