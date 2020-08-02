class MapQuestService 
  def location_data(location)
    conn = Faraday.new(url: "https://www.mapquestapi.com")
    response = conn.get("/geocoding/v1/address?key=#{ENV["MAP_API_KEY"]}&outFormat=json&location=#{location}, co&thumbMaps=false")
    location_data = Location.new(json = JSON.parse(response.body, symbolize_names: true))

  end 
end 