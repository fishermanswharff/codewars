require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  it 'If the integer is divisible by 3, return the string "Java"' do
    expect(caffeineBuzz(3)).to eq 'Java'
    expect(caffeineBuzz(9)).to eq 'Java'
    expect(caffeineBuzz(-15)).to eq 'Java'
  end

  it 'If the integer is divisible by 3 and divisible by 4, return the string "Coffee"' do
    expect(caffeineBuzz(12)).to eq 'CoffeeScript'
    expect(caffeineBuzz(24)).to eq 'CoffeeScript'
    expect(caffeineBuzz(36)).to eq 'CoffeeScript'
    expect(caffeineBuzz(48)).to eq 'CoffeeScript'
    expect(caffeineBuzz(-12)).to eq 'CoffeeScript'
    expect(caffeineBuzz(-24)).to eq 'CoffeeScript'
    expect(caffeineBuzz(-36)).to eq 'CoffeeScript'
    expect(caffeineBuzz(-48)).to eq 'CoffeeScript'
  end

  it 'Otherwise, return the string "mocha_missing!"' do
    expect(caffeineBuzz(1)).to eq 'mocha_missing!'
    expect(caffeineBuzz(4)).to eq 'mocha_missing!'
    expect(caffeineBuzz(5)).to eq 'mocha_missing!'
    expect(caffeineBuzz(-4)).to eq 'mocha_missing!'
  end

  it 'If the integer is one of the above and is even, add "Script" to the end of the string.' do
    expect(caffeineBuzz(6)).to eq 'JavaScript'
    expect(caffeineBuzz(18)).to eq 'JavaScript'
    expect(caffeineBuzz(-30)).to eq 'JavaScript'
  end

end


=begin
str = "How can mirrors be real if our eyes aren't real";
Test.assert_equals(str.toJadenCase(), "How Can Mirrors Be Real If Our Eyes Aren't Real")

abcdefghijklmnopqrstuvwxyz
nopqrstuvwxyzabcdefghijklm
=end
