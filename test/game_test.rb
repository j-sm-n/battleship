require './test/test_helper'
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

  def test_player_can_enter_coordinates
    skip
    game = Game.new
    player = Player.new
    sm_ship = ShipTwo.new
    input = "a1 a2"
    expected = ['A','1','A','2']
    assert_equal expected, game.deploy_player_ship
  end
end
