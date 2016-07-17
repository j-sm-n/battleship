require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid_cell'

class GridCellTest < Minitest::Test
  def test_it_starts_with_open_cells
    grid = GridCell.new
    assert_equal :open, grid.status
  end

  def test_it_starts_with_no_ships
    grid = GridCell.new
    assert_equal nil, grid.ships
  end
end
