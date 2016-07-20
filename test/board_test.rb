require './test/test_helper'
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

  def test_board_has_same_num_of_rows_as_dimensions
    board = Board.new

    assert_equal Board::BOARD_DIM, board.grid.count
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

  def test_it_can_check_coordinates_are_not_on_board
    board = Board.new
    ship = ShipTwo.new
    position = {:row => 3, :column => 1}
    orientation = :vertical

    refute board.valid_coordinates?(ship, position, orientation)
  end

  def test_it_can_check_coordinates_are_on_board
    board = Board.new
    ship = ShipTwo.new
    position = {:row => 1, :column => 1}
    orientation = :vertical

    assert board.valid_coordinates?(ship, position, orientation)
  end

  def test_board_can_place_a_ship
    board = Board.new
    sm_ship = ShipTwo.new
    sm_start_position = {:row => 0, :column => 0}
    orientation = :vertical
    board.place_ship(sm_ship, sm_start_position, orientation)

    assert_equal :occupied, board.grid[0][0].status
    assert_equal :occupied, board.grid[1][0].status
    assert_instance_of ShipTwo, board.grid[0][0].ship
    assert_instance_of ShipTwo, board.grid[1][0].ship
  end

  # def test_board_displays_a_hit
  #   board = Board.new
  #   sm_ship = ShipTwo.new
  #   sm_start_position = {:row => 0, :column => 0}
  #   orientation = :vertical
  #   board.place_ship(sm_ship, sm_start_position, orientation)
  #
  #   assert_equal ["==========",
  #                 ". 1 2 3 4",
  #                 "A H       ",
  #                 "B        ",
  #                 "C        ",
  #                 "D        ",
  #                 "=========="], board.dispaly_board
  # end
end
