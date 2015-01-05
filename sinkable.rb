module Sinkable
def increase_hit_count
    @hits += 1
  end

  def sunk?
    @hits >= @size
  end
end
