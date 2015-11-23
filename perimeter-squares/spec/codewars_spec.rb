# run with `rspec`
require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: perimeter of squares in a rectangle' do

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(5)).to eq 80
  end

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(7)).to eq 216
  end

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(20)).to eq 114624
  end

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(30)).to eq 14098308
  end

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(100)).to eq 6002082144827584333104
  end

  it 'calculates the perimeter of N number of squares in a rectangle' do
    expect(perimeter(100)).to eq 6002082144827584333104
  end

end
