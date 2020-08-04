require 'rails_helper'
RSpec.describe Background, type: :model do 
  before :each do 
    response = File.read("spec/fixtures/postman_fixtures/unsplash_api.json")
    @data = JSON.parse(response, symbolize_names: true)
  end 
  it "test background model" do 
    background = Background.new(@data)
    expect(background).to be_a Background 
    expect(background.id).to eq(nil)
    expect(background.background).to eq("https://images.unsplash.com/photo-1568818196688-d6d23eabeb87?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE1Mzk3OX0")
  end 

end
