class Api::V1::TrailsController < ApplicationController 
  def show 
    direction_data = LocationSearchResults.new 
    directions = direction_data.directions(params[:to], params[:from])
    trail_data = TrailSearchResults.new 
    nearby_trails = trail_data.nearby_trails(directions.lat, directions.lng)
    weather_data = WeatherSearchResults.new
    trail_weather = weather_data.forecast(directions.lat, directions.lng)
    trail_head_weather = Forecast.new(trail_weather, params[:to])
    trail_head_info = TrailHeadInfo.new(directions, nearby_trails, trail_head_weather)
    render json: TrailHeadInfoSerializer.new(trail_head_info)
    # trail_data = TrailSearchResults.new
    # trail_info = trail_data.trail_info(params[:to], params[:from])
  end 
end 