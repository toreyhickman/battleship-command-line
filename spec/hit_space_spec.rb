require_relative '../hit_space'

describe HitSpace do
  let(:hit_space) { HitSpace.new }
  describe "#identifier" do
    it "looks like an H" do
      expect(hit_space.identifier).to eq "H"
    end
  end

  describe '#targeted?' do
    it 'has been targeted' do
      expect(hit_space).to be_targeted
    end
  end
end
