class Api::V1::ForecastsController < ApplicationController
  def show
    location = params[:location].downcase
    location_info = LocationSearchResults.new
    location_data = location_info.info(location)

    lattitude = location_data.lat
    longitude = location_data.lng

    binding.pry
  end 

end