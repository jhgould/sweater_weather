require 'rails_helper'
RSpec.describe 'Test the unsplash api' do
      it "it can retrieve a picture for a city", :vcr do 
    
      get "/api/v1/backgrounds?location=denver,co"
      expect(response).to be_successful 
      json = JSON.parse(response.body, symbolize_names: true)
      expect(json[:data][:attributes].keys).to include(:id, :background)
    end 

  
end