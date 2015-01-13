require_relative 'spec_helper'

describe Board do

  describe ".create" do
    let(:created_board) { Board.create }
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
end
