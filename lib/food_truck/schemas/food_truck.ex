defmodule FoodTruck.Schemas.FoodTruck do
  @moduledoc """
  Schema for food trucks in database
  """

  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @fields ~w(applicant_name facility_type location_desc address food_items)a
  @required_fields ~w(applicant_name facility_type address)a

  schema "food_trucks" do
    field(:applicant_name, :string)
    field(:facility_type, Ecto.Enum, values: [:push_cart, :truck])
    field(:location_desc, :string)
    field(:address, :string)
    field(:food_items, :string)
    timestamps(type: :utc_datetime)
  end

  def changeset(food_truck, params \\ %{}) do
    food_truck
    |> cast(params, @fields)
    |> validate_required(@required_fields)
  end
end
