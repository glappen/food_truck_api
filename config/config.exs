import Config

config :food_truck_api,
  ecto_repos: [FoodTruck.Repo]

config :food_truck_api, FoodTruck.Repo,
  database: "food_truck_api",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
