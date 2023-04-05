defmodule FoodTruck.Directory do
  @moduledoc """
  Directory context for managing and querying food truck data
  """

  alias FoodTruck.Repo
  alias FoodTruck.Schemas.FoodTruck

  def create_food_truck(attrs \\ %{}) do
    %FoodTruck{}
    |> FoodTruck.changeset(attrs)
    |> Repo.insert()
  end
end
