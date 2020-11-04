# Sweater Weather API

Sweater Weather is a backend API for a service-oriented full-stack web application. We were provided with a detailed front-end wireframe and expected JSON responses. Our goal was to consume multiple external APIs to gather and format the data required. 

## End Points 

GET `'/api/v1/backgrounds?location=<city>,<state>'`

Example for this request: GET `'/api/v1/backgrounds?location=denver,co'`

```ruby 
{
    "data": {
        "id": null,
        "type": "background",
        "attributes": {
            "id": null,
            "background": "https://images.unsplash.com/photo-1578983427937-26078ee3d9d3?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE1Mzk3OX0"
        }
    }
}
```

GET `'/api/v1/forecast?location=<city>,<state>'`

example response for this request: GET `'/api/v1/forecast?location=denver,co'`

```ruby
{
    "data": {
        "id": "1",
        "type": "forecast",
        "attributes": {
            "id": 1,
            "location": "denver,co",
            "current_weather": {
                "id": 1,
                "date_time": "2020-11-04T20:23:08.000+00:00",
                "current_temp": 74.71,
                "feels_like": 68.58,
                "humidity": 17,
                "visibility": 10000,
                "uv_index": 3.11,
                "sunrise": "2020-11-04T13:32:34.000+00:00",
                "sunset": "2020-11-04T23:54:24.000+00:00",
                "desc": "few clouds",
                "daily_max": 74.71,
                "daily_min": 54.14 ...
```

POST `'/api/v1/users?email=<email>&password=<password>&password_confirmation=<password confirmation>'`

example response for this request: POST `'/api/v1/users?email=you@example.com&password=password&password_confirmation=password'`

```ruby 
{
    "data": {
        "id": "9",
        "type": "user",
        "attributes": {
            "email": "you@example.com",
            "api_key": "ec03ad45-d3f4-40d1-a981-2fa74edcf8d3"
        }
    }
}
```

POST `'/api/v1/sessions?email=<email>&password=<password>'`

example response for this request: POST `'/api/v1/sessions?email=you@example.com&password=password'`

```ruby 
{
    "data": {
        "id": "9",
        "type": "user",
        "attributes": {
            "email": "you@example.com",
            "api_key": "2aee3f05-e4c8-4d5d-ba2f-8d2c0f116f29"
        }
    }
}

```

POST `'/api/v1/road_trip?origin=<city>,<state>&destination=<city>,<state>&api_key=<api_key>'`

example response for this request: POST `'/api/v1/road_trip?origin=denver,co&destination=pueblo,co&api_key=<api_key>'`

```ruby
{
    "data": {
        "id": null,
        "type": "road_trip",
        "attributes": {
            "id": null,
            "travel_time": "01:43:57",
            "current_weather": 85.6,
            "summary": "light rain",
            "origin": "denver,co",
            "destination": "pueblo,co"
        }
    }
}

```


