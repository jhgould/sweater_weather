class LocationSearchResults 
  def info(location)
    location_data = MapQuestService.new.location_data(location)
  end 

  def travel_time(origin, destination)
  response = MapQuestService.new.travel_time(origin, destination)
  TravelTime.new(json = JSON.parse(response.body, symbolize_names: true))
  end
end 