require 'spec_helper'

describe CoordinatesTranslator do
  it 'converts a coordinate to the corresponding board index' do
    known_coordinates_to_indexes = {
      "A1"  => 0,
      "B2"  => 11,
      "C3"  => 22,
      "D4"  => 33,
      "E5"  => 44,
      "F6"  => 55,
      "G7"  => 66,
      "H8"  => 77,
      "I9"  => 88,
      "J10" => 99
    }

    known_coordinates_to_indexes.each do |coordinate, index|
      expect(CoordinatesTranslator.to_index(coordinate)).to eq index
    end
  end
end
