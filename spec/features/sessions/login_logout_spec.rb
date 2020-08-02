require 'rails_helper'
RSpec.describe 'Sessions spec ', type: :feature do 
  before :each do 
    @user1 = User.create!(name: "User1", password: "password", password_confirmation: "password" )
  end 

  it "user can log in and log out" do 
    visit "/login"

    fill_in "Username", with: @user1.name
    fill_in "Password", with: @user1.password
    
    expect(current_path).to eq("/")
  end 
end