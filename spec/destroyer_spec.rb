require_relative 'spec_helper'

describe Destroyer do
  expected_size = 2

  it_behaves_like "a battleship ship", expected_size

  it 'identified by a D' do
    expect(subject.identifier).to eq 'D'
  end
end
