class TrailSearchResults
  def nearby_trails(lat, lng, origin) 
    trail_info = TrailService.new.trails(lat, lng)
    trails = trail_info[:trails].map do |trail|
      TrailInfo.new(trail, origin)
    end 
  end

end 