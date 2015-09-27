require_relative 'spec_helper'

describe PlacementValidator do
  let(:ship) { double('ship', { size: 3 }) }
  let(:fleet) { double('fleet', { ship_at?: false }) }

  describe 'placing a ship in a row' do
    it 'returns true if there\'s room for the ship' do
      expect(PlacementValidator.valid_row_placement?(3, ship, fleet)).to be true
    end

    it 'returns false if ship would overlap another ship' do
      allow(fleet).to receive(:ship_at?).with(4).and_return true
      expect(PlacementValidator.valid_row_placement?(2, ship, fleet)).to be false
    end

    it 'returns false if ship would extend past end of row' do
      expect(PlacementValidator.valid_row_placement?(8, ship, fleet)).to be false
    end
  end

  describe 'placing a ship in a column' do
  end
end
