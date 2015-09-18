require_relative '../untargeted_space'

describe UntargetedSpace do
  let(:space) { UntargetedSpace.new }

  describe "identifier" do
    it "looks like a dash" do
      expect(space.identifier).to eq "-"
    end
  end

  describe '#targeted?' do
    it 'has been targeted' do
      expect(space).to_not be_targeted
    end
  end
end
