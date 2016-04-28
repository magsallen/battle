require_relative 'player'

class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
  end

  def self.create_game(player_1, player_2)
    self.new(player_1, player_2)
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def current_player
    @players[0]
  end

  def opponent
    @players[1]
  end

  def switch_turns
    @players.reverse!
  end

  def over?
    @player_1.hit_points == 0 || @player_2.hit_points == 0
  end

end
