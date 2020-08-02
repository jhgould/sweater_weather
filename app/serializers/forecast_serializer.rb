class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :location, :current_weather, :hourly_weather, :daily_weather
end
