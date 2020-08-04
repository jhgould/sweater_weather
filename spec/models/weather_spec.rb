require 'rails_helper'
RSpec.describe Weather, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/weather_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    weather = Weather.new(@data)
    expect(weather).to be_a Weather
    expect(weather.current_temp).to eq(81)
    expect(weather.feels_like).to eq(79.61)
    expect(weather.desc).to eq("clear sky")
  end 

end
