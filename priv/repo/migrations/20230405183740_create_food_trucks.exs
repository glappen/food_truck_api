defmodule FoodTruck.Repo.Migrations.CreateFoodTrucks do
  use Ecto.Migration

  def change do
    create table("food_trucks", primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :applicant_name, :string
      add :facility_type, :string
      add :location_desc, :string
      add :address, :string
      add :food_items, :text

      timestamps()
    end
  end
end
