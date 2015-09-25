require_relative 'spec_helper'

describe FleetBoard do
  it_behaves_like 'a battleship board'

  let(:created_board) { FleetBoard.create }

  describe '.create' do
    it 'sets up the board with unoccupied spaces' do
      created_board.spaces.each do |space|
        expect(space).to_not be_occupied
      end
    end
  end

  describe '#place_fleet' do
    let(:ship_placements) { { a: [0], b: [1] } }

    it 'occupies board spaces where ships are located' do
      expect(created_board.spaces[0]).to_not be_occupied
      expect(created_board.spaces[1]).to_not be_occupied

      created_board.place_fleet(ship_placements)

      expect(created_board.spaces[0]).to be_occupied
      expect(created_board.spaces[1]).to be_occupied
    end
  end
end
