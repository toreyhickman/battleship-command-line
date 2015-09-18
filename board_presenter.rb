class BoardPresenter
  def initialize(board)
    @board = board
  end

  def render_board
    header + rows_as_strings.join(row_divider) + footer
  end

  private
  attr_reader :board

  def header
    <<-HEADER.gsub(/^\s*/, '')
    ---|---|---|---|---|---|---|---|---|---|---|
    *  | A | B | C | D | E | F | G | H | I | J |
    ---|---|---|---|---|---|---|---|---|---|---|
    HEADER
  end

  def rows_as_strings
    board.rows.map.with_index(1) do |row, row_number|
      ship_columns = row.map { |space| " #{space.identifier} " }.join("|")
      "#{row_prefix(row_number)}|#{ship_columns}|\n"
    end
  end

  def row_prefix(n)
    "#{n}  "[0..2]
  end

  def row_divider
    "---|---|---|---|---|---|---|---|---|---|---|\n"
  end
  alias :footer :row_divider
end
