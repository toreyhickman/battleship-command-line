module CoordinatesTranslator

  def self.to_index(coordinate)
    row_value(row_number(coordinate)) + column_value(column(coordinate))
  end

  private
  def self.column(coordinate)
    coordinate[0]
  end

  def self.column_value(column)
    ("A".."J").to_a.index(column)
  end

  def self.row_number(coordinate)
    (coordinate.slice /\d+/).to_i
  end

  def self.row_value(row_number)
    (row_number - 1) * 10
  end
end
