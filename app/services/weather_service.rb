class WeatherService

  def weather_info(lat, lng)
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lng}&appid=#{ENV["WEATHER_API_KEY"]}&units=imperial")
    json = JSON.parse(response.body, symbolize_names: true)
  end 

  def current_weather_info(destination)
    response = conn.get("/data/2.5/weather?q=#{destination}&appid=#{ENV["WEATHER_API_KEY"]}&units=imperial")
    JSON.parse(response.body, symbolize_names: true)
  end 

  def conn
    Faraday.new(url: "https://api.openweathermap.org" )
  end 
end 