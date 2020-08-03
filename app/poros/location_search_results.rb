class LocationSearchResults 
  def info(location)
    location_data = MapQuestService.new.location_data(location)
  end 

  def directions(to, from)
    directional_data = MapQuestService.new.directions(to, from)
  end 
end 