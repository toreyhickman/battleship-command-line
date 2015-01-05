require_relative 'spec_helper'

describe Carrier do
  expected_size = 5

  it_behaves_like "a battleship ship", expected_size
end
