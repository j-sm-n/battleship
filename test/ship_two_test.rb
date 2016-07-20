require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship_two'

class ShipTwoTest < Minitest::Test

  def test_ship_can_be_sunk
    player_ship = ShipTwo.new
    player_ship.hit
    player_ship.hit

    assert player_ship.sunk?
  end

  def test_ship_can_be_hit_but_not_sunk
    player_ship = ShipTwo.new
    player_ship.hit

    assert_equal 1, player_ship.hits
    refute player_ship.sunk?
  end

  def test_ship_marker
    ship = ShipTwo.new

    assert_equal "+", ship.to_s
  end
end
