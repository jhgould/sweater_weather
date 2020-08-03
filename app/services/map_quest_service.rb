class MapQuestService 
  def location_data(location)
    conn = Faraday.new(url: "https://www.mapquestapi.com")
    response = conn.get("/geocoding/v1/address?key=#{ENV["MAP_API_KEY"]}&outFormat=json&location=#{location}, co&thumbMaps=false")
    location_data = Location.new(json = JSON.parse(response.body, symbolize_names: true))
  end 

  def directions(to, from)
        conn = Faraday.new(url: "https://www.mapquestapi.com")
        response = conn.get("/directions/v2/route?key=#{ENV["MAP_API_KEY"]}&from=#{from}&to=#{to}&outFormat=json&routeType=fastest")
        json = JSON.parse(response.body, symbolize_names: true)
        binding.pry
  end 
end 