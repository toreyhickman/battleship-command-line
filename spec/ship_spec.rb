require_relative 'spec_helper'

describe Ship do
  expected_size = 1

  it_behaves_like 'a battleship ship', expected_size

  it 'identified by an S' do
    expect(subject.identifier).to eq 'S'
  end
end
