require './lib/player'

describe Player do
  let(:player){Player.new("Joe")}

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq "Joe"
    end 
  end
end