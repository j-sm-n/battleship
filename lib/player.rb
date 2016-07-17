require './lib/board'
require './lib/ship_two'
require './lib/ship_three'

class Player

  def initialize
    @board = Board.new
    @ship_two = ShipTwo.new
    @ship_three = ShipThree.new
    @ships_left = Board::NUM_SHIPS
  end
end
