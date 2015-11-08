require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  it 'calculates with functions' do
    expect(seven(times(five()))).to eq 35
    expect(four(plus(nine()))).to eq 13
    expect(eight(minus(three()))).to eq 5
    expect(six(divided_by(two()))).to eq 3
    expect(seven(divided_by(three()))).to eq 2.3333333333333335
  end
end


