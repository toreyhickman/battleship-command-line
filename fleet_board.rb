class FleetBoard < Board

  attr_reader :spaces

  def self.create
    spaces = Array.new(100) { UnoccupiedSpace.new }

    self.new(spaces)
  end

  def place_fleet(ship_placements)
    ship_placements.each do |ship, locations|
      locations.each do |board_index|
        spaces[board_index] = OccupiedSpace.new(ship)
      end
    end
  end
end
