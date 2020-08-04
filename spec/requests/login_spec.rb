require 'rails_helper'
RSpec.describe 'Tests user loggin in' do
  it "test user can login" do 
    user = User.create!(email: "idk@email.com", password:"password", password_confirmation: "password")
    user_params = {email: "idk@email.com", password: "password", password_confirmation: "password"}

    post "/api/v1/sessions", params: user_params
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data][:attributes].keys).to include(:email, :api_key)
  end 

  it "test user cant login with incorrect information" do 
    error_response = {:status=>400, :errors=>"Credentials are bad"}
    user = User.create!(email: "idk@email.com", password:"password", password_confirmation: "password")
    user_params = {email: "idk@email.com", password: "pasword", password_confirmation: "password"}

    post "/api/v1/sessions", params: user_params
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to eq(error_response)
  end 

end 