require 'date'
class DailyWeather 
  attr_reader :day, 
              :desc, 
              :rain, 
              :snow, 
              :min, 
              :max
   
      def initialize(data)
        @day = DateTime.strptime(data[:dt].to_s,'%s')
        @desc = data[:weather][0][:main]
        @rain = data[:rain]
        @snow = data[:snow]
        @min = data[:temp][:min]
        @max = data[:temp][:max]
    end
end 