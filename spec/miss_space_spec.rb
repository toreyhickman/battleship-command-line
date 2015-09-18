require_relative '../miss_space.rb'

describe MissSpace do
  let(:miss_space) { MissSpace.new }

  describe "#to_s" do
    it "looks like an X" do
      expect(miss_space.to_s).to eq "X"
    end
  end

  describe '#targeted?' do
    it 'has been targeted' do
      expect(miss_space).to be_targeted
    end
  end
end
