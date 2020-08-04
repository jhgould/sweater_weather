class MapQuestService 

  def location_data(location)
    response = conn.get("/geocoding/v1/address?key=#{ENV["MAP_API_KEY"]}&outFormat=json&location=#{location}&thumbMaps=false")
  end 


  def travel_time(origin, destination)
    response = conn.get("/directions/v2/route?key=#{ENV["MAP_API_KEY"]}&from=#{origin}%2C+CO&to=#{destination}&outFormat=json")
  end 

  def conn 
    Faraday.new(url: "https://www.mapquestapi.com")
  end 

end 