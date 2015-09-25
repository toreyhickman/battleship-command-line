require_relative 'spec_helper'

describe Battleship do
  expected_size = 4

  it_behaves_like "a battleship ship", expected_size

  it 'identified by a B' do
    expect(subject.identifier).to eq 'B'
  end

end
