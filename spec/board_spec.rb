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
        expect(space).to be_an_instance_of UntargetedSpace
      end
    end
  end

  describe "marking shots" do
    it "records hits" do
      expect { created_board.mark_hit_at 0 }.to change { created_board.spaces[0].class }.to HitSpace
    end

    it "records misses" do
      expect { created_board.mark_miss_at 0 }.to change { created_board.spaces[0].class }.to MissSpace
    end
  end
end
