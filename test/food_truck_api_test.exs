defmodule FoodTruckApiTest do
  use ExUnit.Case
  doctest FoodTruckApi

  test "greets the world" do
    assert FoodTruckApi.hello() == :world
  end
end
