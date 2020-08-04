require 'rails_helper'
RSpec.describe DailyWeather, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/weather_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    weather = Forecast.new(@data, "Denver, Co")
    expect(weather).to be_a Forecast
    expect(weather.daily_weather.length).to eq(8)
    expect(weather.current_weather.current_temp).to eq(81)
    expect(weather.current_weather.daily_max).to eq(85.03)
    expect(weather.current_weather.daily_min).to eq(63.5)
  end 

end
