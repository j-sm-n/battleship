require './lib/grid_cell'

class Board
  attr_reader :grid

  NUM_SHIPS = 2
  BOARD_DIM = 5
  ROW       = ['A','B','C','D','E']
  COLUMN    = ['1','2','3','4','5']

  def initialize
    @grid = Array.new(BOARD_DIM).map! {Array.new(BOARD_DIM).map! {GridCell.new}}
  end

  def dispaly_board
    row_letter = ('A'..'Z').to_a
    counter = 0
    puts "==========="
    puts ". 1 2 3 4 5"
    @grid.each do |row|
      print row_letter[counter] + ' '
      row.each {|cell| print cell.to_s + ' '}
      print "\n"
      counter += 1
    end
    puts "==========="
  end
end

board = Board.new
board.dispaly_board
puts board.grid[0][0].status
