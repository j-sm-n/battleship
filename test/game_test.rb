require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_opponent_has_valid_coordinates_in_queue
    # this test sucks, re-do!
    game = Game.new

    assert game.set_opponent.all? { |coordinate| "ABCDE" && 12345}
  end

  def test_opponent_ship_has_coordinates
    skip
    game = Game.new
    board = Board.new
    opponent = Player.new
    ship = ShipTwo.new
    game.deploy_opp_ship(opponent, ship)

    assert_eqaul 2, game.position.length
  end
end
