class TrailHeadInfo 
  attr_reader :location, :trails, :weather, :id
  def initialize(location, trails,  weather)
    @id = nil
    @location = location
    @weather = weather
    @trails = trails 
    end

end 