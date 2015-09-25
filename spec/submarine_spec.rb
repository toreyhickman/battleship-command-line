require_relative 'spec_helper'

describe Submarine do
  expected_size = 3

  it_behaves_like "a battleship ship", expected_size

  it 'identified by an U' do
    expect(subject.identifier).to eq 'U'
  end
end
