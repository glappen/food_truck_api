defmodule FoodTruck.DirectoryTest do
  use FoodTruck.RepoCase

  alias FoodTruck.{Directory, Repo}
  alias FoodTruck.Schemas.FoodTruck

  describe "create_food_truck/1" do
    test "greets the world" do
      Directory.create_food_truck(%{
        applicant_name: "Joes Subs",
        facility_type: :truck,
        address: "123 River Rd, Fairlawn NJ"
      })

      assert 1 = Repo.one(from(ft in FoodTruck, select: count(ft.id)))
    end
  end

  describe "search_food_trucks/1" do
    setup do
      Directory.create_food_truck(%{
        applicant_name: "Taco Time",
        facility_type: :truck,
        address: "123 River Rd, San Francisco CA",
        food_items: "Tacos and Burritos"
      })

      Directory.create_food_truck(%{
        applicant_name: "Famous Ray's Pizza",
        facility_type: :truck,
        address: "567 Main St, San Francisco CA",
        food_items: "Pizza, Subs, Salads"
      })

      :ok
    end

    test "returns all food trucks with no filtering" do
      assert [%FoodTruck{}, %FoodTruck{}] = Directory.search_food_trucks(%{})
    end

    test "returns matching food trucks when food_items filter passed" do
      assert [%FoodTruck{applicant_name: "Famous Ray's Pizza"}] = Directory.search_food_trucks(%{food_items: "Pizza"})
    end
  end
end
