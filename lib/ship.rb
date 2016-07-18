require './lib/grid_cell'

class Ship
  attr_accessor :hits

  attr_reader   :length

  def initialize
  	@hits = 0
  end

  def hit
    @hits += 1
  end

  def sunk?
    @length == @hits
  end
end
