class GridCell
  attr_reader :status,
              :ships

  FILL_CHAR = {
              :open => " ",
              :hit => "H",
              :miss => "M"
            }

  def initialize(status = :open, ships = nil)
    @status = status
    @ships = ships
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
