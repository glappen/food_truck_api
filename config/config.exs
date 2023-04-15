import Config

config :food_truck_api,
  ecto_repos: [FoodTruck.Repo]

import_config "#{config_env()}.exs"
