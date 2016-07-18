require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_a_ship_starts_with_no_hits
    ship1 = Ship.new

    assert_equal 0, ship1.hits
  end

  def test_a_ship_can_be_hit
    ship1 = Ship.new
    ship1.hit

    assert_equal 1, ship1.hits
  end

end
