class Location 
  attr_reader :lat, :lng
    def initialize(attributes)
      @lat = attributes[:results][0][:locations][0][:displayLatLng][:lat]
      @lng = attributes[:results][0][:locations][0][:displayLatLng][:lng]
    end

end 