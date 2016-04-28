require 'game'
require 'player'

describe Game do
  let(:player_1){double :player_1, hit_points: 100}
  let(:player_2){double :player_2, hit_points: 100}
  subject(:game){described_class.new(player_1, player_2)}

  describe 'attacking' do
    it 'should reduce hit points' do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end

  describe '#player1' do
    it 'should return the player 1 object' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player2' do
    it 'should return the player 2 object' do
      expect(game.player_2).to eq player_2
    end
  end

  describe 'current player' do
    it 'should be able to tell who\'s turn it it' do
      expect(game.current_player).to eq(player_1)
    end
  end

  describe 'switching turns' do
    it 'should be able to switch turns' do
      game.switch_turns
      expect(game.current_player).to eq(player_2)
    end
  end

end
