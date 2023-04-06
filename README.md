# FoodTruckApi
This is an Elixir-based GraphQL API for searching food trucks in San Francisco. It is based on
the publicly available food truck data published [here](https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat/data).

## Usage
The food truck data can be loaded into the database via the following command:
```
export DATABASE_URL="ecto://<username>:<passwd>@<host>/<db_name>"
mix seed_database
```

The api can be started in development mode with the following command:
```
iex -S mix
```

## Demo
The API is deployed and can be interacted with [here](http://rigel.lapcominc.com:4444/graphiql?query=%7B%0A%20%20foodTrucks(foodItems%3A%20%22tacos%22)%20%7B%0A%20%20%20%20applicantName%0A%20%20%20%20facilityType%0A%20%20%20%20foodItems%0A%20%20%20%20address%0A%20%20%20%20insertedAt%0A%20%20%20%20updatedAt%0A%20%20%7D%0A%7D). You can modify the GraphQL query on the left side and click the "play" button to execute the query. Below are some example queries that can be run in the graphiql IDE:

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

