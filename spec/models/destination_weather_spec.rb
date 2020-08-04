require 'rails_helper'
RSpec.describe DestinationWeather, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/destination_weather_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    weather = DestinationWeather.new(@data)
    expect(weather).to be_a DestinationWeather
    expect(weather.current_weather).to eq(94.37)
    expect(weather.summary).to eq("scattered clouds")
  end 

end
