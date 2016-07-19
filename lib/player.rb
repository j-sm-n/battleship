require './lib/board'
require './lib/ship_two'
require './lib/ship_three'

class Player
  attr_reader :board,
              :ship_two,
              :ship_three,
              :ships_left

  def initialize
    @board      = Board.new
    @ship_two   = ShipTwo.new
    @ship_three = ShipThree.new
    @ships_left = Board::NUM_SHIPS
  end
end
