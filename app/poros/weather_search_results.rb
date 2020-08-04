class WeatherSearchResults 

    def forecast(lat, lng)
       weather = WeatherService.new.weather_info(lat, lng)
    end

    def current_weather(destination)
        response = WeatherService.new.current_weather_info(destination)
        DestinationWeather.new(response)
    end 
end