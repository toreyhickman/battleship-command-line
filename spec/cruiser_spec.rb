require_relative 'spec_helper'

describe Cruiser do
  expected_size = 3

  it_behaves_like "a battleship ship", expected_size

  it 'identified by a C' do
    expect(subject.identifier).to eq 'C'
  end
end
