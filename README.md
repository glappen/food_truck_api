# FoodTruckApi
This is an Elixir-based GraphQL API for searching food trucks in San Francisco. It is based on
the publicly available food truck data published [here](https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat/data).

## Example Queries
```
{
  foodTrucks {
    applicantName
    facilityType
    foodItems
    address
    insertedAt
    updatedAt
  }
}
```

```
{
  foodTrucks(foodItems: "burger") {
    applicantName
    facilityType
    foodItems
    address
    insertedAt
    updatedAt
  }
}
```

```
{
  foodTrucks(foodItems: "burrito") {
    applicantName
    foodItems
    address
  }
}
```

