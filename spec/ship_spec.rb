require_relative 'spec_helper'

describe Ship do
  expected_size = 1

  it_behaves_like "a battleship ship", expected_size
end
