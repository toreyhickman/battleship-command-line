class Board

  attr_reader :spaces

  def self.create
    spaces = Array.new(100) { UntargetedSpace.new }

    self.new(spaces)
  end

  def initialize(spaces)
    @spaces = spaces
  end
end
