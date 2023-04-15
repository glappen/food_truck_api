import Config

config :food_truck_api, FoodTruck.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  url: "ecto://postgres:postgres@localhost/food_truck_api_test"
