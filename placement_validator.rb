module PlacementValidator
  def self.valid_row_placement?(board_index, ship, fleet)
    indexes_to_be_covered = calulate_row_indexes_to_be_covered(board_index, ship)

    return false if runs_off_row?(indexes_to_be_covered)

    indexes_to_be_covered.each do |index|
      return false if fleet.ship_at?(index)
    end

    true
  end

  private
  def self.calulate_row_indexes_to_be_covered(board_index, ship)
    last_index_covered = board_index + (ship.size - 1)
    (board_index..last_index_covered).to_a
  end

  def self.runs_off_row?(indexes_to_be_covered)
    end_of_row_indexes.each do |end_of_row_index|
      return true if indexes_to_be_covered.include?(end_of_row_index) && end_of_row_index != indexes_to_be_covered.last
    end

    false
  end

  def self.end_of_row_indexes
    [9, 19, 29, 39, 49, 59, 69, 79, 89, 99]
  end
end
