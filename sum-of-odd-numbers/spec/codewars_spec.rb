require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: Given the triangle of consecutive odd numbers:' do

  it 'Calculate the row sums of this triangle from the row index (starting at index 1)' do
    expect(row_sum_odd_numbers(1)).to eq 1
    expect(row_sum_odd_numbers(2)).to eq 8
    expect(row_sum_odd_numbers(3)).to eq 27
    expect(row_sum_odd_numbers(13)).to eq 2197
    expect(row_sum_odd_numbers(19)).to eq 6859
    expect(row_sum_odd_numbers(41)).to eq 68921
    expect(row_sum_odd_numbers(42)).to eq 74088
    expect(row_sum_odd_numbers(74)).to eq 405224
    expect(row_sum_odd_numbers(86)).to eq 636056
    expect(row_sum_odd_numbers(93)).to eq 804357
    expect(row_sum_odd_numbers(101)).to eq 1030301
  end
end


=begin
                   1
                3     5
             7     9    11
         13    15    17    19
      21    23    25    27    29
   31    33    35    37    39    41
43    45    47    49    51    53     55

do i need to assemble the triangle? I def need to find out which numbers to use.
1 : 1
2 : 3,5
3 : 7,9,11
4 : 13,15,17,19
5 : 21,23,25,27,29
6 : 31,33,35,37,39,41
7 : 43,45,47,49,51,53,55
8 : 57,59,61,63,65,67,69,71
9 : 73,75,77,79,81,83,85,87,89

=end
