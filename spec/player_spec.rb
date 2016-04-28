require 'player'

describe Player do
  subject(:player_1) {Player.new('maggie')}
  subject(:player_2) {Player.new('macey')}
  DEFAULT_HP = 100

  describe 'returns a player name' do
    it 'returns the name' do
      expect(player_1.name).to eq('maggie')
    end
  end

  describe 'returns a player HP' do
    it 'returns the HP' do
      expect(player_1.hit_points).to eq(DEFAULT_HP)
    end
  end

end
