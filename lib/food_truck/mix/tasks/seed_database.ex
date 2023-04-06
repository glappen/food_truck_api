defmodule Mix.Tasks.SeedDatabase do
  @moduledoc "seed_database mix task"

  use Mix.Task

  alias FoodTruck.Directory

  @shortdoc "seeds database from Mobile_Food_Facility_Permit.csv file"
  def run(_) do
    Mix.Task.run("app.start")
    IO.puts("Seeding database...")

    "priv/Mobile_Food_Facility_Permit.csv"
    |> File.stream!()
    |> CSV.decode(headers: true)
    |> Enum.each(fn {:ok, row} ->
      if row["Status"] == "APPROVED" do
        {:ok, _} =
          Directory.create_food_truck(%{
            applicant_name: row["Applicant"],
            facility_type: convert_type(row["FacilityType"]),
            location_desc: row["LocationDescription"],
            address: row["Address"],
            food_items: row["FoodItems"]
          })
      end
    end)
  end

  defp convert_type("Push Cart"), do: :push_cart
  defp convert_type("Truck"), do: :truck
  defp convert_type(_), do: :truck
end
