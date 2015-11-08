require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:string1) { 'aa_bb_cc_dd_bb_e' }
  let(:string2) { 'aaabbbcccc' }
  let(:string3) { 'aaa' }
  let(:pattern1) { 'bb' }
  let(:pattern2) { 'bbb' }
  let(:pattern3) { 'aa' }


  it 'counts the number of times the search string appears in the given string' do
    expect(search_substr(string1, pattern1)).to eq 2
  end

  it 'works for different patterns too' do
    expect(search_substr(string2, pattern2)).to eq 1
  end

  it 'allows for overlap by default' do
    expect(search_substr(string3, pattern3)).to eq 2
  end

  it 'returns 0 for no matches' do
    expect(search_substr(string3, '')).to eq 0
  end

  it 'can optionally set overlap to false' do
    expect(search_substr(string3, pattern3, false)).to eq 1
  end

  # it 'returns false if the pattern and string do not match' do
  #   expect(search_substr(string3, pattern)).to eq false
  #   expect(search_substr(pattern3, string2)).to eq false
  # end

  # it 'returns false' do
  #   expect(search_substr(pattern2, string4)).to eq false
  # end

end
