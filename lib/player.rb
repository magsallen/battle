class Player

  attr_reader :player_name
  attr_accessor :hit_points
  DEFAULT_HP = 100

  def initialize(player_name)
    @player_name = player_name
    @hit_points = DEFAULT_HP
  end
  
end
