require_relative 'player'

class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def current_player
    @players[0]
  end

  def switch_turns
    @players.reverse!
  end
    

end
