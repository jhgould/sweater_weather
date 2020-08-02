require 'date'
class HourlyWeather
  attr_reader :temp, :time, :id
    def initialize(data)
      @id = 1
      @temp = data[:temp]
      @time = DateTime.strptime(data[:dt].to_s,'%s')
    end

end 