class Api::V1::TrailsController < ApplicationController 
  def show 
    direction_data = LocationSearchResults.new 
    directions = direction_data.directions(params[:to], params[:from])
    trail_data = TrailSearchResults.new 
    nearby_trails = trail_data.nearby_trails(directions.lat, directions.lng)
    binding.pry
    # trail_data = TrailSearchResults.new
    # trail_info = trail_data.trail_info(params[:to], params[:from])
  end 
end 