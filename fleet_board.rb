class FleetBoard < Board

  def place_fleet(ship_placements)
    ship_placements.each do |ship, locations|
      locations.each do |board_index|
        spaces[board_index] = OccupiedSpace.new(ship)
      end
    end
  end

  private
  def self.default_space
    UnoccupiedSpace
  end
end
