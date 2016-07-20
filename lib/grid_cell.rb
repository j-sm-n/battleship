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
  def shot_result_to_s
    if @ship && @status != :hit
      @ship.to_s
    elsif @status == :hit
      FILL_CHAR[@status]
    elsif @status == :miss
      FILL_CHAR[@status]
    else
      FILL_CHAR[@status]
    end      
  end
end
