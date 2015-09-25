require_relative 'spec_helper'

describe Carrier do
  expected_size = 5

  it_behaves_like "a battleship ship", expected_size

  it 'identified by an A' do
    expect(subject.identifier).to eq 'A'
  end
end
