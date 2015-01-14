require_relative '../hit_space'

describe HitSpace do
  let(:hit_space) { HitSpace.new }
  describe "#to_s" do
    it "looks like an H" do
      expect(hit_space.to_s).to eq "H"
    end
  end
end
