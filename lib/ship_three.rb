require './lib/ship'

class ShipThree < Ship

  def initialize
    @length = 3
    @fill_char = "+"
    @name = "three-unit"
    super
  end
end
