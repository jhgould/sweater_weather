require 'rails_helper'
RSpec.describe TravelTime, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/travel_time.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    location = TravelTime.new(@data)
    expect(location).to be_a TravelTime
    expect(location.travel_time).to eq("01:43:57")
  end 

end
