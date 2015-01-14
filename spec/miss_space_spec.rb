require_relative '../miss_space.rb'

describe MissSpace do
  let(:miss_space) { MissSpace.new }

  describe "#to_s" do
    it "looks like an X" do
      expect(miss_space.to_s).to eq "X"
    end
  end
end
