defmodule FoodTruck.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias FoodTruck.Repo

      import Ecto
      import Ecto.Query
      import FoodTruck.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(FoodTruck.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(FoodTruck.Repo, {:shared, self()})
    end

    :ok
  end
end
