require 'spec_helper'

describe Dennis do
  it 'has a version number' do
    expect(Dennis::VERSION).to be
  end

  describe '.define' do
    it 'accepts a block as parameter' do
      # allow(Dennis).to receive(:define).and_yield(true)
    end
  end
end
