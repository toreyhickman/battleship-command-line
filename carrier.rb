class Carrier < Ship
  def initialize
    super
    @size = 5
  end

  def identifier
    'A'
  end
end
