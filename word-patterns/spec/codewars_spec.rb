require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:string1) { 'apple banana apple banana' }
  let(:string2) { 'car truck truck car' }
  let(:string3) { 'apple banana banana apple' }
  let(:string4) { 'cat cat cat cat' }
  let(:pattern1) { 'abab' }
  let(:pattern2) { 'abba' }
  let(:pattern3) { 'aaaa' }

  it 'tests if the string matches the pattern' do
    expect(word_pattern(pattern1, string1)).to eq true
  end

  it 'works for different patterns too' do
    expect(word_pattern(pattern2, string2)).to eq true
  end

  it 'returns false if the pattern and string do not match' do
    expect(word_pattern(pattern1, string2)).to eq false
    expect(word_pattern(pattern3, string2)).to eq false
  end

  it 'returns false' do
    expect(word_pattern(pattern2, string4)).to eq false
  end

end
