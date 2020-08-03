class TrailSearchResults
  def trail_info(to, from) 
    # direction_info = MapQuestService.new.directions(to, from)
    trail_info = TrailService.new.near_by_trails(lat, lng)
    # weather_info = WeatherService.new.weather_info(lat, lng)
  end 

end 