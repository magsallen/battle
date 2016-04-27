require 'game'
require 'player'

describe Game do
  let(:player_1){double :player_1, hit_points: 100}
  let(:player_2){double :player_2, hit_points: 100}
  subject(:game){described_class.new(player_1, player_2)}

  describe 'attacking' do
    it 'should reduce hit points' do
      allow(game).to receive(:attack).with(player_1)
      allow(player_1).to receive(:hit_points)
      allow(game).to receive(:damage).with(player_1).and_return(90)
      expect{game.attack(player_1)}.to change{player_1.hit_points}.by -10
    end
    it 'should damage the opponent' do
      expect(player_2).to receive(:damage)
      player_1.attack(player_2)
    end

  end

end
