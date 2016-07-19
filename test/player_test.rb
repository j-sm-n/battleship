require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_player_has_new_instance_of_a_board
    player = Player.new

    assert_instance_of Board.new, player.board
  end

end
