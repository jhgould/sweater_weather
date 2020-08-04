class Api::V1::RoadTripsController < ApplicationController 

  def create
    user = User.find_by(api_key: params[:api_key])
    if user && (user.api_key != nil)
      location_data = LocationSearchResults.new
      travel_time = location_data.travel_time(trip_params[:origin], trip_params[:destination])
      weather_data = WeatherSearchResults.new 
      location_weather = weather_data.current_weather(trip_params[:destination])
      road_trip_data = RoadTrip.new(travel_time, location_weather, trip_params[:origin], trip_params[:destination])
      render json: RoadTripSerializer.new(road_trip_data)
    else 
      render :json => { status: 401, error: ("Unauthorized") }
    end 
  end 

  private

  def trip_params 
    params.permit(:origin, :destination, :api_key)
  end 

end 