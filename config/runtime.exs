import Config

config :food_truck_api, FoodTruck.Repo,
  url: System.get_env("DATABASE_URL")
