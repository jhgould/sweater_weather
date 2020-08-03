class Api::V1::TrailsController < ApplicationController 
  def show 
    direction_data = LocationSearchResults.new 
    directions = direction_data.info(params[:location])
    trail_data = TrailSearchResults.new 
    nearby_trails = trail_data.nearby_trails(directions.lat, directions.lng, params[:location])
    weather_data = WeatherSearchResults.new
    trail_weather = weather_data.forecast(directions.lat, directions.lng)
    trail_head_weather = TrailHeadForecast.new(trail_weather)
    trail_head_info = TrailHeadInfo.new(params[:location], nearby_trails, trail_head_weather)
    render json: TrailHeadInfoSerializer.new(trail_head_info)
  end 
end 