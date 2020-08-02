require 'date'
class Weather 
  attr_reader :id,
              :date_time, 
              :current_temp, 
              :feels_like, 
              :humidity, 
              :visibility, 
              :uv_index, 
              :sunrise, 
              :sunset, 
              :desc, 
              :daily_max, 
              :daily_min 

    def initialize(attr)
      @id = 1
      @date_time = DateTime.strptime(attr[:current][:dt].to_s,'%s')
      @current_temp = attr[:current][:temp]
      @feels_like = attr[:current][:feels_like]
      @humidity = attr[:current][:humidity]
      @visibility = attr[:current][:visibility]
      @uv_index = attr[:current][:uvi]
      # @sunrise = attr[:current][:sunrise]
      @sunrise = DateTime.strptime(attr[:current][:sunrise].to_s,'%s')
      # @sunset = attr[:current][:sunset]
      @sunset = DateTime.strptime(attr[:current][:sunset].to_s,'%s')
      @desc = attr[:current][:weather][0][:description]
      @daily_max = attr[:daily][0][:temp][:max]
      @daily_min = attr[:daily][0][:temp][:min]
    end

end 