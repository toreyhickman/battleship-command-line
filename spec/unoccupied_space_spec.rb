require_relative '../unoccupied_space'

describe UnoccupiedSpace do
  let(:space) { UnoccupiedSpace.new }

  describe '#identifier' do
    it 'looks like a dash' do
      expect(space.identifier).to eq '-'
    end
  end

  describe '#occupied?' do
    it 'is not occupied' do
      expect(space).to_not be_occupied
    end
  end
end
