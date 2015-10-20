require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:str) {'Look mom, no hands'}
  let(:hex) {'4c6f6f6b206d6f6d2c206e6f2068616e6473'}
  let(:text3) {''}
  let(:text4) {''}
  let(:text5) {''}
  let(:text6) {''}
  let(:text7) {''}
  let(:text8) {''}

  it 'converts ascii to hex' do
    expect(Converter.to_hex(str)).to eq hex
  end

  it 'converts hex to ascii' do
    expect(Converter.to_ascii(hex)).to eq str
  end
end


=begin
str = "How can mirrors be real if our eyes aren't real";
Test.assert_equals(str.toJadenCase(), "How Can Mirrors Be Real If Our Eyes Aren't Real")

abcdefghijklmnopqrstuvwxyz
nopqrstuvwxyzabcdefghijklm
=end
