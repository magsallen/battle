require 'player'


describe Player do
  it 'does something' do
    # subject(:player) {described_class}
    player = Player.new('maggie')
    expect(player.player_name).to eq('maggie')
    end
end
