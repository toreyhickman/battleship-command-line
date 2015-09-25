class Destroyer < Ship
  def initialize
    super
    @size = 2
  end

  def identifier
    'D'
  end
end
