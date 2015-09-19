require_relative 'spec_helper'

describe Fleet do
  let(:destroyer) { double('destroyer') }
  let(:carrier) { double('carrier') }
  let(:ships) { [destroyer, carrier] }

  let(:fleet) { Fleet.new(ships) }

  it 'has ships' do
    expect(fleet.ships).to match_array [destroyer, carrier]
  end

  describe '#sunk?' do
    it 'returns false if any ships in the fleet are unsunk' do
      allow(destroyer).to receive(:sunk?).and_return true
      allow(carrier).to receive(:sunk?).and_return false

      expect(fleet).to_not be_sunk
    end

    it 'returns true if all ships in the fleet are sunk' do
      allow(destroyer).to receive(:sunk?).and_return true
      allow(carrier).to receive(:sunk?).and_return true

      expect(fleet).to be_sunk
    end
  end

  describe '#ship_placements' do
    it 'initializes with no placements' do
      expect(fleet.ship_placements).to be_empty
    end

    it 'can record a ship\'s placement' do
      destroyer_placement = { destroyer => [0, 1, 2] }
      expect { fleet.record_ship_placement(destroyer, [0, 1, 2]) }.to change { fleet.ship_placements }.to destroyer_placement
    end

    context 'if ship is not in the fleet' do
      it 'does not update ship placements' do
        expect { fleet.record_ship_placement( "other ship", [0, 1, 2]) }.to_not change { fleet.ship_placements }
      end
    end
  end

  describe 'dealing with ships at a specific location' do
    before(:each) do
      fleet.record_ship_placement(destroyer, [0, 1, 2])
      fleet.record_ship_placement(carrier, [59, 69, 79, 89, 99])
    end

    describe '#ship_at?' do
      it 'returns true if a ship is at that location' do
        expect(fleet.ship_at?(79)).to be true
      end

      it 'returns false if no ship is at that location' do
        expect(fleet.ship_at?(50)).to be false
      end
    end

    describe '#ship_at' do
      it 'returns the ship at that locations' do
        expect(fleet.ship_at(1)).to be destroyer
      end

      it 'returns nil if no ship at that location' do
        expect(fleet.ship_at(50)).to be_nil
      end
    end
  end
end
