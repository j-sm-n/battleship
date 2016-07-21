require './test/test_helper'
require './lib/grid_cell'

class GridCellTest < Minitest::Test
  def test_it_starts_with_open_cells
    grid = GridCell.new

    assert_equal :open, grid.status
  end

  def test_it_starts_with_no_ships
    grid = GridCell.new

    assert_equal nil, grid.ship
  end

  def test_if_ship_hit_status_is_now_hit
    grid = GridCell.new
    grid.hit

    assert_equal :hit, grid.status
  end

  def test_if_ship_missed_status_is_miss
    grid = GridCell.new
    grid.miss

    assert_equal :miss, grid.status
  end

  def test_shot_is_a_miss
    grid = GridCell.new
    grid.miss

    assert_equal "M", grid.shot_result_to_s
  end

  def test_shot_is_a_hit
    grid = GridCell.new
    grid.hit

    assert_equal "H", grid.shot_result_to_s
  end

  def test_cell_displays_as_empty
    grid = GridCell.new

    assert_equal " ", grid.shot_result_to_s
  end
end
