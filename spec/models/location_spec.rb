require 'rails_helper'
RSpec.describe Location, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/location_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    location = Location.new(@data)
    expect(location).to be_a Location
    expect(location.lat).to eq(39.738453)
    expect(location.lng).to eq(-104.984853)
  end 

end
