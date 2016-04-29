class Player

  attr_reader :name
  attr_accessor :hit_points
  DEFAULT_HP = 50

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def receive_damage
    @hit_points -= damage
  end

  def damage
    (10*rand).ceil
  end

end
