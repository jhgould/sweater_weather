require 'rails_helper'
RSpec.describe 'Test the api request' do 
    it "it can retrieve weather for a city", :vcr do 
      
      get "/api/v1/forecast?location=denver,co"
      expect(response).to be_successful 
      json = JSON.parse(response.body, symbolize_names: true)
      expect(json[:data][:attributes].keys).to include(:id, :location, :current_weather, :hourly_weather, :daily_weather)
      expect(json[:data][:attributes][:current_weather].keys).to include(:id, :date_time, :current_temp, :feels_like, :humidity, :visibility, :uv_index, :sunrise, :sunset, :desc, :daily_max, :daily_min)
      expect(json[:data][:attributes][:hourly_weather].class).to eq(Array)
      expect(json[:data][:attributes][:daily_weather].class).to eq(Array)
    end 

end