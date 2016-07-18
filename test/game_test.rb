require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_it_can_randomly_set_opponent
    game = Game.new

    assert_equal Array?, game.set_opponent
  end
end
