class OccupiedSpace
  def initialize(ship)
    @ship = ship
  end

  def identifier
    ship.identifier
  end

  def occupied?
    true
  end

  private
  attr_reader :ship
end
