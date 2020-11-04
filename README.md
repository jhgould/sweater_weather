# Sweater Weather API

Sweater Weather is a backend API for a service-oriented full-stack web application. We were provided with a detailed front-end wireframe and expected JSON responses. Our goal was to consume multiple external APIs to gather and format the data required. 

## End Points 

`GET '/api/v1/backgrounds?location=<city>,<state>'`

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

`GET '/api/v1/forecast?location=<city>,<state>'`

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



