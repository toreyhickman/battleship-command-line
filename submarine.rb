class Submarine < Ship
  def initialize
    super
    @size = 3
  end

  def identifier
    'U'
  end
end
