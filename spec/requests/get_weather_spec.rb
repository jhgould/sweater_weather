require 'rails_helper'
RSpec.describe 'Test the api request' do 
  it "it can retrieve weather for a city" do 
    
    get "/api/v1/forecast?location=denver,co"
    expect(response).to be_successful 

  end 

end