class DestinationWeather 
  attr_reader :current_weather, 
              :summary

    def initialize(data)
      @current_weather = data[:main][:temp]
      @summary = data[:weather][0][:description]
    end

end 