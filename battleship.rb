class Battleship < Ship
  def initialize
    super
    @size = 4
  end

  def identifier
    'B'
  end
end
