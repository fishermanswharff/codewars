require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'Map Function Issue' do

  let(:function) { lambda { |n| n % 2 == 0 } }
  let(:array) { [1,2,3,'8'] }

  it 'returns an array of booleans if the numbers are even or odd' do
    expect(map(array,function)).to eq [false,true,false,true]
    expect(map([ 77, 84, 18, 43, 16, 70, 53 ],function)).to eq [ false, true, true, false, true, true, false ]
  end

  it 'should work for random inputs too' do
    expect(map([10, 10, 5, -2], function)).to eq [true, true, false, true]
  end

  it 'returns "given argument is not a function" if not passed a function' do
    expect(map([1,96,37,60,7],'test')).to eq 'given argument is not a function'
  end

  it 'returns "array should contain only numbers" if an array does not contain a number' do
    expect(map([72,12,30,'q'],function)).to eq 'array should contain only numbers'
  end
end
