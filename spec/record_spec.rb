require 'spec_helper'

describe Dennis::Record do
  describe '.new' do
    subject { Dennis::Record.new(:a, to: '1.2.3.4') }

    let(:type) { subject.instance_variable_get(:@type) }
    let(:destination) { subject.instance_variable_get(:@resolves_to) }

    it 'accepts a type' do
      expect(subject).to be
    end

    it 'accepts additional parameters' do
      expect(subject).to be
    end

    it 'assigns the type' do
      expect(type).to eq(:a)
    end

    it 'assigns the destination' do
      expect(destination).to eq('1.2.3.4')
    end

    it 'returns a Record object' do
      expect(subject).to be_instance_of(Dennis::Record)
    end

    describe 'without a type' do
      it 'throws an error' do
        expect { Dennis::Record.new }.to raise_error(ArgumentError)
      end
    end

    describe 'without parameters' do
      it 'throws an error' do
        expect { Dennis::Record.new(:a) }.to raise_error(ArgumentError)
      end
    end
  end
end
