class Player

  attr_accessor :name, :life

  def initialize(name)
    @name = name;
    @life = 3
  end

  def life
    "#{@life}"
  end

  def is_dead?
    @life <= 0
  end

  def lose_a_life
    @life -= 1
  end
end