class LocationSearchResults 
  def info(location)
    response = MapQuestService.new.location_data(location)
    Location.new(json = JSON.parse(response.body, symbolize_names: true))
  end 

  def travel_time(origin, destination)
  response = MapQuestService.new.travel_time(origin, destination)
  TravelTime.new(json = JSON.parse(response.body, symbolize_names: true))
  end
end 