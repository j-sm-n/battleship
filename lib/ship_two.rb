require './lib/ship'

class ShipTwo < Ship

  def initialize
    @length = 2
    @fill_char = " "
    super
  end
end
