require './test/test_helper'
require './lib/ship'

class ShipTest < Minitest::Test

  def test_a_ship_starts_with_no_hits
    ship = Ship.new

    assert_equal 0, ship.hits
  end

  def test_a_ship_can_be_hit
    ship = Ship.new
    ship.hit

    assert_equal 1, ship.hits
  end

  def test_ship_can_sink
    ship = Ship.new
    ship.length = 2
    ship.hit
    ship.hit

    assert ship.sunk?
  end

end
