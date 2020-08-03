class TrailService 
  def trails(lat, lng)
    conn = Faraday.new(url: "https://www.hikingproject.com" )
    
    response = conn.get("/data/get-trails?lat=#{lat}&lon=#{lng}&maxDistance=1&key=#{ENV["HIKING_PRO_API"]}")
    json = JSON.parse(response.body, symbolize_names: true)
  end 
end 