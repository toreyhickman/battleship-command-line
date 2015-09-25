require_relative 'spec_helper'

describe Space do
  describe '#identifier' do
    it 'looks like a dash' do
      expect(subject.identifier).to eq '-'
    end
  end
end
