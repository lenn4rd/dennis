require 'spec_helper'

describe Dennis::Zone do
  describe '.new' do
    subject { Dennis::Zone.new('example.com') { 'Swallow this message' } }

    let(:name) { subject.instance_variable_get(:@name) }

    it 'accepts a name' do
      expect(subject).to be
    end

    it 'accepts a block' do
      expect(subject).to be
    end

    it 'assigns the zone name' do
      expect(name).to eq('example.com')
    end

    it 'returns a Zone object' do
      expect(subject).to be_instance_of(Dennis::Zone)
    end

    describe 'without a zone name' do
      it 'throws an error' do
        expect { Dennis::Zone.new { 'Swallow this message' } }.to raise_error(ArgumentError)
      end
    end

    describe 'without a block' do
      it 'throws an error' do
        expect { Dennis::Zone.new('example.com') }.to raise_error(ArgumentError)
      end
    end
  end
end
