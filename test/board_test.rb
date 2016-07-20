require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test

  def test_new_board_has_no_ships
    board = Board.new

    assert_equal nil, board.grid[0][0].ship
  end

  def test_new_board_is_open
    board = Board.new

    assert_equal :open, board.grid[0][0].status
  end

  def test_it_can_keep_ships_from_overlapping
    board = Board.new
    sm_ship = ShipTwo.new
    lg_ship = ShipThree.new
    sm_start_position = {:row => 0, :column => 0}
    board.place_ship(sm_ship, sm_start_position, :horizontal)
    lg_start_position = {:row => 0, :column => 0}

    refute board.check_clearance?(lg_ship, lg_start_position, :vertical)
  end

  def test_check_clearance_can_be_true
    board = Board.new
    sm_ship = ShipTwo.new
    lg_ship = ShipThree.new
    sm_start_position = {:row => 0, :column => 0}
    board.place_ship(sm_ship, sm_start_position, :horizontal)
    lg_start_position = {:row => 1, :column => 0}

    assert board.check_clearance?(lg_ship, lg_start_position, :vertical)
  end

  def test_board_can_place_ships
    skip
    board = Board.new
    sm_ship = ShipTwo.new
    sm_start_position = {:row => 0, :column => 0}

    assert_equal
  end

  def test_it_can_check_coordinates
    skip
    board = Board.new
    ship = ShipTwo.new

    assert board.valid_coordinates?(ship, 'a1', 'a2')
  end
end
