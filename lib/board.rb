require './lib/grid_cell'
require './lib/ship_two'
require './lib/ship_three'

class Board
  attr_reader :grid

  NUM_SHIPS = 2
  BOARD_DIM = 4
  ROW       = ['A','B','C','D']
  COLUMN    = ['1','2','3','4']

  def initialize
    @grid = Array.new(BOARD_DIM).map! {Array.new(BOARD_DIM).map! {GridCell.new}}
  end

  def dispaly_board
    row_letter = ('A'..'Z').to_a
    counter = 0
    puts "=========="
    puts ". 1 2 3 4"
    @grid.each do |row|
      print row_letter[counter] + ' '
      row.each {|cell| print cell.to_s + ' '}
      print "\n"
      counter += 1
    end
    puts "=========="
  end

  def valid_coordinates?(ship, first_cord, second_cord)
    true
  end
end

board = Board.new
board.dispaly_board
