class BackgroundSearchResults 
  def background(location) 
    response = UnsplashService.new.background_api_call(location)
    Background.new(response)
  end 
end 