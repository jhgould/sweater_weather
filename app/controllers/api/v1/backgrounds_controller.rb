class  Api::V1::BackgroundsController < ApplicationController
  def show 
    location = params[:location]
    background_search = BackgroundSearchResults.new 
    background = background_search.background(location)
    render json: BackgroundSerializer.new(background)
  end 
end