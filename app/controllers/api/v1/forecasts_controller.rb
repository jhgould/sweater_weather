class Api::V1::ForecastsController < ApplicationController
  def show
    location = params[:location].downcase
    location_info = LocationSearchResults.new
    location_data = location_info.info(location)
   
    weather = WeatherSearchResults.new
    weather_data = weather.forecast(location_data.lat, location_data.lng)
    
    forecast_data = Forecast.new(weather_data, location)
    render json: ForecastSerializer.new(forecast_data)
  end 

end




