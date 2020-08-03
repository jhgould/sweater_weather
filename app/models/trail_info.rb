class TrailInfo
  attr_reader :name, :summary, :difficulty, :location, :distance_to_trail
    def initialize(data, origin)
      @name = data[:name]
      @summary = data[:summary]
      @difficulty = data[:difficulty]
      @location = data[:location]
      # @length = data[:length]
      # @origin = origin
      @distance_to_trail = distance_to_trail(@location, origin)
    end

    def distance_to_trail(location, origin)
      direction_data = LocationSearchResults.new 
      directions = direction_data.directions(location, origin)
      directions.distance
    end

end 