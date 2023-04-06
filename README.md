# FoodTruckApi
This is an Elixir-based GraphQL API for searching food trucks in San Francisco. It is based on
the publicly available food truck data published [here](https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat/data).

## Demo
The API is deployed [here](http://rigel.lapcominc.com:4444/). Below are some example queries that can be run in the graphiql IDE:

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

