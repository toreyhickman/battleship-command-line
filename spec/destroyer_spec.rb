require_relative 'spec_helper'

describe Destroyer do
  expected_size = 2

  it_behaves_like "a battleship ship", expected_size
end
