class RoadTripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :travel_time, :current_weather, :summary, :origin, :destination
end
