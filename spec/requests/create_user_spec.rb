require 'rails_helper'
RSpec.describe 'Tests create user api' do
  it "test that a user can be created" do 
    user_params = {email: "idk@email.com", password: "password", password_confirmation: "password"}

    post "/api/v1/users", params: user_params
    user = User.last
    
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(user.email).to eq(user_params[:email])
  end 
  
    it "test sad path for user creating" do 
    error_response = {:status=>400, :errors=>["Password confirmation doesn't match Password", "Password confirmation doesn't match Password"]}
    user_params = {email: "idk@email.com", password: "password", password_confirmation: "passssword"}

    post "/api/v1/users", params: user_params
    user = User.last
    
    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json).to eq(error_response)
  end 

end 