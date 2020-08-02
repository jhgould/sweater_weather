class Background 
  attr_reader :id, :background 

    def initialize(data)
      @id = nil
      @background = data[:results][0][:urls][:regular]
    end
end 