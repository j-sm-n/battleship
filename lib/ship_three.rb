require './lib/ship'

class ShipThree < Ship

  def initialize
    @length = 3
    @fill_char = "+"
    super
  end
end
