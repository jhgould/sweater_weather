class TrailSearchResults
  def nearby_trails(lat, lng) 
    trail_info = TrailService.new.trails(lat, lng)
    trails = trail_info[:trails].map do |trail|
      TrailInfo.new(trail)
    end 
  end

end 