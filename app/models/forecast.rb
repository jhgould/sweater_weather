class Forecast 
    attr_reader :current_weather, 
                :hourly_weather, 
                :daily_weather, 
                :id, 
                :location

    def initialize(weather, location)
        @id = 1
        @current_weather = current(weather)
        @hourly_weather = hourly(weather)
        @daily_weather = daily(weather)
        @location = location
    end


    def current(weather)
       Weather.new(weather)
    end 
  
    def hourly(weather)
      weather[:hourly].map do |data|
        HourlyWeather.new(data)
      end 
    end 

    def daily(weather)
      weather[:daily].map do |data|
        DailyWeather.new(data)
      end 
    end 

end 