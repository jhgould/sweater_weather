class WeatherSearchResults 

    def forecast(lat, lng)
       weather = WeatherService.new.weather_info(lat, lng)
    end

  # def current(weather)
  #      Weather.new(weather)
  # end 
  
  # def hourly
  #   hourly_weather = @weather[:hourly].map do |data|
  #     HourlyWeather.new(data)
  #   end 
  # end 

  # def daily
  #     daily_weather = @weather[:daily].map do |data|
  #       DailyWeather.new(data)
  #     end 
  #   end 

end