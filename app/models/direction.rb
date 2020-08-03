class Direction 
  attr_reader :distance, :lat, :lng
    def initialize(data)
      @distance = data[:route][:distance]
      @lat = data[:route][:locations].last[:latLng][:lat]
      @lng = data[:route][:locations].last[:latLng][:lng]
    end
end 