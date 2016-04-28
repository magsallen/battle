class Player

  attr_reader :name
  attr_accessor :hit_points
  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HP
  end

  def receive_damage
    @hit_points -= DEFAULT_DAMAGE
  end

end
