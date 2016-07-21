require './lib/grid_cell'

class Ship
  attr_accessor :hits,
                :length,
                :name

  def initialize
    @hits = 0
    @name = name
  end

  def hit
    @hits += 1
  end

  def sunk?
    @length == @hits
  end

  def to_s
    @fill_char
  end
end
