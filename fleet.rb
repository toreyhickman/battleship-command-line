class Fleet
  attr_reader :ships

  def initialize(ships)
    @ships = ships
  end

  def ship_placements
    @ship_placements ||= Hash.new
  end

  def record_ship_placement(ship, indexes)
    ship_placements[ship] = indexes if ships.include? ship
  end

  def sunk?
    ships.all?(&:sunk?)
  end

  def ship_at?(n)
    !!ship_at(n)
  end

  def ship_at(n)
    ship_placements.each do |ship, indexes|
      return ship if indexes.include? n
    end

    nil
  end

  private
  def ship_locations
    ship_placements.values
  end
end
