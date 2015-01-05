class Ship
  attr_reader :size, :hits

  include Sinkable

  def initialize
    @size = 1
    @hits = 0
  end
end
