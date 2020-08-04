class Api::V1::RoadTripsController < ApplicationController 

  def create
    user = User.find_by(api_key: params[:api_key])
    if user && (user.api_key != nil)
      location_data = LocationSearchResults.new
      travel_time = location_data.travel_time(trip_params[:origin], trip_params[:destination])
      #need to build current weather seach api then add travel time and weather to a model and present with a serializer
      binding.pry
    else 
      render :json => { status: 401, error: ("Unauthorized") }
    end 
  end 

  private

  def trip_params 
    params.permit(:origin, :destination, :api_key)
  end 

end 