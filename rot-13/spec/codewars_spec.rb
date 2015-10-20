require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:test_string) { 'test' }
  let(:capitalized_test_string) { 'Test' }
  let(:codewars) { 'Codewars' }
  let(:ruby_enthusiast) { 'Ruby is cool!' }
  let(:alphabet) { 'abcdefghijklmnopqrstuvwxyz' }

  it 'converts the alphabet' do
    expect(rot13 alphabet).to eq 'nopqrstuvwxyzabcdefghijklm'
  end

  it 'converts wnmg1r to jazt1e' do
    expect(rot13 'wnmg1r').to eq 'jazt1e'
  end

  it 'converts test to grfg' do
    expect(rot13 test_string).to eq 'grfg'
  end

  it 'respects capitalization' do
    expect(rot13(capitalized_test_string)).to eq 'Grfg'
    expect(rot13(codewars)).to eq 'Pbqrjnef'
  end

  it 'does nothing with puncuation' do
    expect(rot13 ruby_enthusiast).to eq 'Ehol vf pbby!'
  end

end


=begin
str = "How can mirrors be real if our eyes aren't real";
Test.assert_equals(str.toJadenCase(), "How Can Mirrors Be Real If Our Eyes Aren't Real")

abcdefghijklmnopqrstuvwxyz
nopqrstuvwxyzabcdefghijklm
=end
