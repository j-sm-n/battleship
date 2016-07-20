class GridCell
  attr_accessor :status,
                :ship

  FILL_CHAR = {
              :open => " ",
              :hit => "H",
              :miss => "M"
            }

  def initialize(status = :open, ship = nil)
    @status = status
    @ship = ship
  end

  def hit
    @status = :hit
  end

  def miss
    @status = :miss
  end

  # will add colorize conditional below later
  def shot_result
    FILL_CHAR[@status]
  end
end
