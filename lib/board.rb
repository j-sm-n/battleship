require './lib/grid_cell'
require './lib/ship_two'
require './lib/ship_three'
# require './lib/game'
require 'pry'

class Board
  attr_accessor :grid

  NUM_SHIPS = 2
  BOARD_DIM = 4
  ROW       = ['A','B','C','D']
  COLUMN    = ['1','2','3','4']

  def initialize
    @grid = Array.new(BOARD_DIM).map! {Array.new(BOARD_DIM).map! {GridCell.new}}
  end

  def check_clearance?(ship, start_position, orientation)
    row = start_position[:row]
    column = start_position[:column]
    ship.length.times do
      if self.grid[row][column].ship
        return false
      elsif orientation == :horizontal
        column += 1
      else
        row +=1
      end
    end
    return true
  end

  def valid_coordinates?(ship, start_position, orientation)
    if orientation == :horizontal
      (start_position[:column] + ship.length) <= BOARD_DIM
    else
      (start_position[:row] + ship.length) <= BOARD_DIM
    end
  end

  def place_ship(ship, start_position, orientation)
    row = start_position[:row]
    column = start_position[:column]
    ship.length.times do
      if orientation == :horizontal
        self.grid[row][column].ship = ship
        self.grid[row][column].status = :occupied
        column += 1
      else
        self.grid[row][column].ship = ship
        self.grid[row][column].status = :occupied
        row += 1
      end
    end
  end
  # binding.pry

  def dispaly_board
    row_letter = ('A'..'Z').to_a
    counter = 0
    puts "=========="
    puts ". 1 2 3 4"
    @grid.each do |row|
      print row_letter[counter] + ' '
      row.each {|cell| print cell.shot_result_to_s + ' '}
      print "\n"
      counter += 1
    end
    puts "=========="
  end
end
