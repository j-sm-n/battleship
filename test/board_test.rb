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

end
