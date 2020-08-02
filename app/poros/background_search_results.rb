class BackgroundSearchResults 
  def background(location) 
    json = UnsplashService.new.background_api_call(location)
     background = Background.new(json)
  end 
end 