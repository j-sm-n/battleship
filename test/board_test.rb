require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_new_board_has_no_ships
    board = Board.new

    assert_equal nil, board.grid[0][0].ships
  end

  def test_new_board_is_open
    board = Board.new

    assert_equal :open, board.grid[0][0].status
  end

  def test_it_can_keep_ships_from_overlapping
    board = Board.new
    sm_ship = ShipTwo.new
    lg_ship = ShipThree.new

    assert check_clearance?()
  end

  def test_board_can_place_ships
    skip
    board = Board.new
    sm_ship = ShipTwo.new

    assert_equal board.grid[:row, :column]
  end

  def test_it_can_check_coordinates
    skip
    board = Board.new
    ship = ShipTwo.new

    assert board.valid_coordinates?(ship, 'a1', 'a2')
  end
end
