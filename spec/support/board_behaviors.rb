shared_examples 'a battleship board' do
  let(:created_board) { described_class.create }

  describe ".create" do
    it "sets up the board with 100 spaces" do
      expect(created_board.spaces.size).to eq 100
    end
  end

  describe "spaces as rows" do
    it "has ten rows" do
      expect(created_board.rows.count).to eq 10
    end

    it "has 10 spaces in each row" do
      created_board.rows.each do |row|
        expect(row.count).to eq 10
      end
    end
  end
end
