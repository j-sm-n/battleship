require './lib/board'
require './lib/ship_two'
require './lib/ship_three'

class Player
  attr_accessor :board,
                :target_board

  attr_reader   :ship_two,
                :ship_three,
                :ships_left

  def initialize
    @board        = Board.new
    @target_board = Board.new
    @ship_two     = ShipTwo.new
    @ship_three   = ShipThree.new
    @ships_left   = Board::NUM_SHIPS
  end

  def print_player_board
    puts "  1 2 3 4"
    row_letter = ('A'..'Z').to_a
    row_number = 0
    @board.grid.each do |row1|
      print row_letter[row_number] + ' '
      row1.each {|cell| print cell.to_s + ' '}
      print "        "
      print row_letter[row_number] + ' '
      @target_board.grid[row_number].each {|cell| print cell.to_s + ' '}
      print "\n"
      row_number += 1
    end
  end
end
