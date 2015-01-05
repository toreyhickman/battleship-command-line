class Ship
  attr_reader :size, :hits

  def initialize
    @size = 1
    @hits = 0
  end

  def increase_hit_count
    @hits += 1
  end

  def sunk?
    @hits >= @size
  end
end
