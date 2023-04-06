defmodule FoodTruckApi.Schema do
  @moduledoc """
  Absinthe GraphQL Schema definition
  """
  use Absinthe.Schema

  alias FoodTruckApi.Resolve

  object :food_truck do
    field(:applicant_name, :string)
    field(:facility_type, :string)
    field(:location_desc, :string)
    field(:address, :string)
    field(:food_items, :string)
    field(:inserted_at, :string)
    field(:updated_at, :string)
  end

  query do
    field :food_trucks, list_of(:food_truck) do
      resolve(&Resolve.food_trucks/3)
    end
  end
end
