require 'player'

class Game

  DEFAULT_DAMAGE = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(opponent)
    damage(opponent)
  end

  def damage(opponent)
    opponent.hit_points -= DEFAULT_DAMAGE
  end

end
