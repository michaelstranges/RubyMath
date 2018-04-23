class Player

  attr_reader :name

  def initialize(name)
    @name = name;
    @life = 3
  end

  def life
    "#{@life} Life"
  end

  def is_dead?
    @life <= 0
  end
end