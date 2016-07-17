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
end
