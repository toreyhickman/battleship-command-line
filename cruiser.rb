class Cruiser < Ship
  def initialize
    super
    @size = 3
  end

  def identifier
    'C'
  end
end
