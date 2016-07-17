class GridCell
  attr_reader :status,
              :ships
              
  def initialize(status = :open, ships = nil)
    @status = status
    @ships = ships
  end
end
