shared_examples "a battleship ship" do |desired_size|
  let(:ship) { described_class.new }

  describe "ship size" do
    it "has a size of #{desired_size}" do
      expect(ship.size).to eq desired_size
    end

    it "can be given a non-default size" do
      three_space_ship = described_class.new(size: 3)
      expect(three_space_ship.size).to eq 3
    end
  end

  describe "times ship has been hit" do
    it "has a default of 0 hits" do
      expect(ship.hits).to eq 0
    end

    it "can be created with hits" do
      two_hit_ship = described_class.new(hits: 2)
      expect(two_hit_ship.hits).to eq 2
    end
  end

  describe "#increase_hit_count" do
    it "can be hit" do
      expect {ship.increase_hit_count}.to change {ship.hits}.by(1)
    end
  end

  describe "#sunk?" do
    it "can be unsunk" do
      expect(ship.sunk?).to be false
    end

    it "can be sunk" do
      until ship.hits >= ship.size
        ship.increase_hit_count
      end

      expect(ship.sunk?).to be true
    end
  end
end
