class Board
  attr_reader :spaces

  def self.create
    spaces = Array.new(100) { default_space.new }

    self.new(spaces)
  end

  def initialize(spaces)
    @spaces = spaces
  end

  def rows
    spaces.each_slice(10).to_a
  end

  private
  def self.default_space
    Space
  end
end
