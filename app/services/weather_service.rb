class WeatherService

  def weather_info(lat, lng)
    conn = Faraday.new(url: "https://api.openweathermap.org" )
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lng}&appid=#{ENV["WEATHER_API_KEY"]}&units=imperial")
    json = JSON.parse(response.body, symbolize_names: true)
      end 

end 