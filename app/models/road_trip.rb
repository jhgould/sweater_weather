class RoadTrip
  attr_reader :travel_time, 
              :current_weather,
              :summary, 
              :origin, 
              :destination, 
              :id

  def initialize(travel_time, location_weather, origin, destination)
    @id  = nil
    @travel_time = travel_time.travel_time
    @current_weather = location_weather.current_weather
    @summary = location_weather.summary
    @origin = origin
    @destination = destination
  end

end 