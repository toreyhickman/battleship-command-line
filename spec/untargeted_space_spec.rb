require_relative '../untargeted_space'

describe UntargetedSpace do
  let(:space) { UntargetedSpace.new }

  describe "to_s" do
    it "looks like a dash" do
      expect(space.to_s).to eq "-"
    end
  end
end
