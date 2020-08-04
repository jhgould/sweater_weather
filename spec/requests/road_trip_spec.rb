require 'rails_helper'
RSpec.describe 'Road trip api tests' do

  it "road trip api outputs the correct info", :vcr do 
    trip = {origin: "Denver, CO", destination: "Pueblo, Co", api_key: "7692b571-971a-45e2-bd92-e908de0a3565" }
    user = User.create!(email: "idk@email.com", password:"password", api_key: "7692b571-971a-45e2-bd92-e908de0a3565")
    post '/api/v1/road_trip', params: trip
    expect(response).to be_successful
  end 

  it "test that a user with a nil token cannot make a request" do 
    error_response = {:status=>401, :error=>"Unauthorized"}
    trip = {origin: "Denver, CO", destination: "Pueblo, Co" }
    user = User.create!(email: "idk@email.com", password:"password")
    post '/api/v1/road_trip', params: trip
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to eq(error_response)
  end 
  
  it "test that a user with a miss-matched token cannot make a request" do 
    error_response = {:status=>401, :error=>"Unauthorized"}
    trip = {origin: "Denver, CO", destination: "Pueblo, Co", api_key: "7692b571-971a-45e2-bd92-e908de0a3565" }
    user = User.create!(email: "idk@email.com", password:"password", api_key: "7692b571-91a-45e2-bd92-e908de0a3565")
    post '/api/v1/road_trip', params: trip
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to eq(error_response)
  end 



end
