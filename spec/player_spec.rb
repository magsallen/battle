require 'player'


describe Player do
  subject(:player_1) {Player.new('maggie')}
  subject(:player_2) {Player.new('macey')}

  describe 'returns a player name' do
    it 'returns the name' do
      expect(player_1.player_name).to eq('maggie')
    end
  end


  describe 'attacking' do
    it 'should reduce hit points' do
      expect{player_2.attack(player_1)}.to change{player_1.hit_points}.by -10
    end
    it 'should damage the opponent' do
      expect(player_2).to receive(:damage)
      player_1.attack(player_2)
    end

  end

end
