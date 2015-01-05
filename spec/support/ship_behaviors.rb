shared_examples "a battleship ship" do |desired_size|
  let(:ship) { described_class.new }

  it "has a size of #{desired_size}" do
    expect(ship.size).to eq desired_size
  end

  it "keeps track of hits" do
    expect(ship.hits).to eq 0
  end

  it "can be hit" do
    expect {ship.increase_hit_count}.to change {ship.hits}.by(1)
  end

  it "can be unsunk" do
    expect(ship.sunk?).to be false
  end

  it "can be sunk" do
    until ship.hits >= ship.size
      ship.increase_hit_count
    end

    expect(ship.sunk?).to be true
  end
end
