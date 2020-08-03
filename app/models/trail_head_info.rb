class TrailHeadInfo 
  attr_reader :distance, :trails, :weather, :id
  def initialize(trails,  weather)
    binding.pry
    @id = nil
    @weather = weather
    @trails = trails 
    end

end 