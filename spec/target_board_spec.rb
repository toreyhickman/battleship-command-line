require_relative 'spec_helper'

describe TargetBoard do
  it_behaves_like 'a battleship board'

  let(:created_board) { TargetBoard.create }

  describe '.create' do
    it 'sets up the board with untargeted spaces' do
      created_board.spaces.each do |space|
        expect(space).to_not be_targeted
      end
    end
  end

  describe 'marking shots' do
    it 'records hits' do
      expect { created_board.mark_hit_at 0 }.to change { created_board.spaces[0].identifier }.to 'H'
    end

    it 'records misses' do
      expect { created_board.mark_miss_at 0 }.to change { created_board.spaces[0].identifier }.to 'X'
    end
  end
end
