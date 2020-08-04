require 'rails_helper'
RSpec.describe HourlyWeather, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/weather_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    weather = @data[:hourly].map do |data|
        HourlyWeather.new(data)
    end 
    weather = weather.first
    expect(weather).to be_a HourlyWeather
    expect(weather.temp).to eq(81)
  end 

end
