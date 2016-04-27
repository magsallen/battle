require 'player'


describe Player do
  subject(:player) {Player.new('maggie')}

  describe 'returns a player name' do
    it 'returns the name' do
      expect(player.player_name).to eq('maggie')
    end
  end

end
