require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:string_a) { 'abcdef' }
  let(:string_b) { 'abc' }
  let(:string_c) { 'acf' }

  let(:string_d) { '132535365' }
  let(:string_e) { '123456789' }


  it 'returns the longest common subsequence between the two strings' do
    expect(lcs(string_a, string_b)).to eq 'abc'
  end

  it 'returns the longest common subsequence between the two strings' do
    expect(lcs(string_a, string_c)).to eq 'acf'
  end

  it 'returns the longest common subsequence between the two strings' do
    expect(lcs(string_d, string_e)).to eq '12356'
  end


end
