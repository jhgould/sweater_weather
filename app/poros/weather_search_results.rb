class WeatherSearchResults 

    def forecast(lat, lng)
       weather = WeatherService.new.weather_info(lat, lng)
    end
end