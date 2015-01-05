require_relative 'spec_helper'

describe Ship do
  let(:generic_ship) { Ship.new }

  describe "ship size" do
    it "has a default size of 1" do
      expect(generic_ship.size).to eq 1
    end

    it "can be given a non-default size" do
      three_space_ship = Ship.new(size: 3)
      expect(three_space_ship.size).to eq 3
    end
  end

  describe "times ship has been hit" do
    it "has a default of 0 hits" do
      expect(generic_ship.hits).to eq 0
    end

    it "can be created with hits" do
      two_hit_ship = Ship.new(hits: 2)
      expect(two_hit_ship.hits).to eq 2
    end
  end

  describe "#increase_hit_count" do
    it "can be hit" do
      expect {generic_ship.increase_hit_count}.to change {generic_ship.hits}.by(1)
    end
  end

  describe "#sunk?" do
    it "can be unsunk" do
      expect(generic_ship.sunk?).to be false
    end

    it "can be sunk" do
      until generic_ship.hits >= generic_ship.size
        generic_ship.increase_hit_count
      end

      expect(generic_ship.sunk?).to be true
    end
  end
end
