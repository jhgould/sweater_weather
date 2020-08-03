class TrailInfo
    def initialize(data)
      @name = data[:name]
      @stars = data[:stars]
      @location = data[:location]
      @length = data[:length]
      @lng = data[:longitude]
      @lat = data[:latitude]
    end
end 