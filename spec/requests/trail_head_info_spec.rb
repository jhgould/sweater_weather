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
      json = JSON.parse(response.body, symbolize_names: true)
      expect(json[:data].keys).to include(:id, :type, :attributes)
      expect(json[:data][:attributes]).to include(:id, :location, :weather, :trails)
      expect(json[:data][:attributes]).to include(:id, :location, :weather, :trails)
      expect(json[:data][:attributes][:trails].first.keys).to include(:name, :summary, :difficulty, :location, :distance_to_trail)
    end 


end