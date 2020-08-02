class LocationSearchResults 
  def info(location)
    location_data = MapQuestService.new.location_data(location)
  end 
end 