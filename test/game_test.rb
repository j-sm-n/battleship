require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class GameTest < Minitest::Test

  def test_opponent_has_valid_coordinates_in_queue
    game = Game.new

    assert game.set_opponent.all? { |coordinate| "ABCDE" && 12345}
  end
end
