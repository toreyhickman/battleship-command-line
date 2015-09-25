require_relative '../occupied_space'

describe OccupiedSpace do
  let(:ship)  { double('ship', { identifier: 'S' }) }
  let(:space) { OccupiedSpace.new(ship) }

  describe '#identifier' do
    it 'uses its ship\'s identifier' do
      expect(space.identifier).to eq 'S'
    end
  end


  describe '#occupied?' do
    it 'is occupied' do
      expect(space).to be_occupied
    end
  end
end
