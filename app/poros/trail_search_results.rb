class TrailSearchResults
  def nearby_trails(lat, lng) 
    trail_info = TrailService.new.trails(lat, lng)
  end 

end 