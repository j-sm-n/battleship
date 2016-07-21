require './test/test_helper'
require './lib/game'

class GameTest < Minitest::Test

  def test_opponent_has_valid_coordinates_in_queue
    # this test sucks, re-do!
    game = Game.new

    assert game.set_opponent.all? { |coordinate| "ABCDE" && 12345}
  end

  def test_opponent_ships_are_placed
    game = Game.new
    board = Board.new
    opponent = Player.new
    sm_ship = ShipTwo.new
    game.deploy_opp_ship(opponent, sm_ship)

    assert !position[:row].nil?
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

  def test_winner_can_be_determined
    game = Game.new
    player = Player.new
    opponent = Player.new
    opponent.ships_left == 0

    assert_equal "Player", game.play_rounds
  end
end
