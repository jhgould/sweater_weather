require 'rails_helper'
RSpec.describe DailyWeather, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/weather_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    weather = DailyWeather.new(@data[:daily][0])
    expect(weather).to be_a DailyWeather
    expect(weather.desc).to eq("Rain")
    expect(weather.max).to eq(85.03)
    expect(weather.min).to eq(63.5)
  end 

end
