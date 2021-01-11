require "./lib/player"

describe Player do
  let(:player){Player.new("Joe")}

  describe "#name" do
    it "returns the name of the player" do
      expect(player.name).to eq "Joe"
    end 
  end

  describe "#hit_points" do
    it "initialize player's default hit points to 60" do
      expect(player.hit_points).to eq Player::DEFAULT_HP
    end

    it "reduce player's hit points by 10" do
      expect{ player.receive_damage }.to change { player.hit_points }.by -10
    end
  end
end