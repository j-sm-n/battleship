require './lib/grid_cell'

class Board
  attr_reader :grid

  NUM_SHIPS = 2
  BOARD_DIM = 5
  # ROW = ['A','B','C','D']
  # COLUMN = ['1','2','3','4']

  def initialize
    @grid = Array.new(BOARD_DIM).map! {Array.new(BOARD_DIM).map! {GridCell.new}}
  end
end
