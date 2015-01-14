class Board

  attr_reader :spaces

  def self.create
    spaces = Array.new(100) { UntargetedSpace.new }

    self.new(spaces)
  end

  def initialize(spaces)
    @spaces = spaces
  end

  def mark_hit_at(index)
    spaces[index] = HitSpace.new
  end

  def mark_miss_at(index)
    spaces[index] = MissSpace.new
  end
end
