class TrailHeadInfo 
  attr_reader :distance, :trails, :weather, :id
  def initialize(directions, trails,  weather)
    @id = nil
    @distance = directions.distance
    @trails = trails 
    @weather = weather
    end

end 