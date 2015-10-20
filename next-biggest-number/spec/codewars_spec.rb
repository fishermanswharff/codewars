require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: next biggest number' do

  it 'the next biggest number with the same digits' do
    expect(next_bigger(12)).to eq 21
    expect(next_bigger(513)).to eq 531
    expect(next_bigger(2017)).to eq 2071
    expect(next_bigger(144)).to eq 414
  end

  it 'if no bigger number can be composed using those digits, return -1:' do
    expect(next_bigger(9)).to eq -1
    expect(next_bigger(111)).to eq -1
    expect(next_bigger(531)).to eq -1
    expect(next_bigger(642)).to eq -1
    expect(next_bigger(9876543210)).to eq -1
  end

  it 'works for bigger numbers too' do
    expect(next_bigger(123456789)).to eq 123456798
    expect(next_bigger(1234567890)).to eq 1234567908
    expect(next_bigger(59884848459853)).to eq 59884848483559
  end
end


# 1234567890 => going backwards, what is the first number at i-1 that is smaller than at i?
#        |   => 8 is the first smaller number it's following number, that is where the next highest number will start from

#        890
# sorted= [0,8,9]
# first number was 8 of subnumber
# next highest is 9
# working string = '9'
# start with lowest of sorted= [0,8]
# '90'
# '908'
# ('1234567' + '908').to_i = 1234567908 => next higher

# 59884848459853
#          |
#          59853
#          35985
#          53598
#          85359
# sort, then reassemble?


# original string: 59853
# sorted array: [3,5,5,8,9]
# 8
# [3,5,5,9]
# 83559
# ('598848484' + '83559').to_i = 59884848483559

# sorted array: [3,5,5,8,9]
# first number was 5 of the sub-number
# next highest number is 8
# start with 8
# next lowest number will bring the next highest number
# sorted array: [3,5,5,9]
# working string: '8'
# next lowest is '3'
# sorted array: [5,5,9]
# working string: '83'
# next lowest is 5
# sorted array: [9]
# '8355'



#          98535
#          98553
#          85539
#          83559

#          83559
#          —————

# 59884848483559
# 59884848495853


