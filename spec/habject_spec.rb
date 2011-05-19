# encoding: utf-8
path = File.expand_path(File.dirname(__FILE__) + "/../lib/")
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)
require "habject"

describe Habject do
  let(:hash) {{'plop' => 'flop'}}
  let(:symbol_hash) {{:plop => 'flop'}}
  let(:multi_hash) {{'plop' => hash}}

  context 'with a flat hash' do
    it 'should respond to plop' do
      hash.should respond_to(:plop)
    end

    it 'should return value ' do
      hash.plop.should == 'flop'
    end
  end

  context 'with a symbolize hash' do
    it 'should respond to plop' do
      symbol_hash.should respond_to(:plop)
    end

    it 'should return value' do
      symbol_hash.plop.should == 'flop'
    end
  end

  context 'with a multidimensional hash' do
    it 'should respond to plop' do
      multi_hash.plop.should respond_to(:plop)
    end

    it 'should return value ' do
      multi_hash.plop.plop.should == 'flop'
    end
  end

  it 'should not respond to flop' do
    hash.should_not respond_to(:flop)
  end
end
