require_relative 'spec_helper'

describe Board do
  let(:created_board) { Board.create }

  describe ".create" do
    it "makes a board" do
      expect(created_board).to be_an_instance_of Board
    end

    it "sets up the board with 100 spaces" do
      expect(created_board.spaces.size).to eq 100
    end

    it "sets up the board with untargeted spaces" do
      created_board.spaces.each do |space|
        expect(space).to_not be_targeted
      end
    end
  end

  describe "marking shots" do
    it "records hits" do
      expect { created_board.mark_hit_at 0 }.to change { created_board.spaces[0].identifier }.to "H"
    end

    it "records misses" do
      expect { created_board.mark_miss_at 0 }.to change { created_board.spaces[0].identifier }.to "X"
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
