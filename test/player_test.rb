require './test/test_helper'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_player_has_new_instance_of_a_board
    player = Player.new

    assert_instance_of Board, player.board
  end

  def test_player_has_two_unit_ship
    player = Player.new

    assert_equal 2, player.ship_two.length
  end

  def test_player_has_three_unit_ship
    player = Player.new

    assert_equal 3, player.ship_three.length
  end

  def test_new_player_has_two_ships
    player = Player.new

    assert_equal 2, player.ships_left
  end
end
