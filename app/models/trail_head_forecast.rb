class TrailHeadForecast 
  attr_reader :tempature, :summary
    def initialize(weather)
        @tempature = weather[:current][:feels_like]
        @summary = weather[:current][:weather][0][:description]
    end
end 