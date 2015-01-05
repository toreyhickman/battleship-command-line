class Ship
  attr_reader :size, :hits

  def initialize(args = {})
    @size = args.fetch(:size, 1)
    @hits = args.fetch(:hits, 0)
  end

  def increase_hit_count
    @hits += 1
  end

  def sunk?
    @hits >= @size
  end
end
