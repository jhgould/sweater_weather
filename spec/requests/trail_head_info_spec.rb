require 'rails_helper'
RSpec.describe 'Test trail head location info' do 
    # it "it can retrieve weather, distance and trail info", :vcr  do 
      
    #   get "/api/v1/trail?from=denver,co&to=boulder,co"
    #   expect(response).to be_successful 
    #   binding.pry
    #   # json = JSON.parse(response.body, symbolize_names: true)
    # end 

    it "it can retrieve weather, distance and trail info", :vcr  do 
      
      get "/api/v1/trails?location=denver,co"
      expect(response).to be_successful 
      binding.pry
      # json = JSON.parse(response.body, symbolize_names: true)
    end 


end