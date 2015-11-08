require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:pangram1) {'The quick brown fox jumps over the lazy dog.'}
  let(:pangram2) {'Pack my box with five dozen liquor jugs'}
  let(:reg_sentence1) {'hello world'}
  let(:reg_sentence2) {'I like turtles'}
  let(:reg_sentence3) {'fuck you you fucking fuck'}

  it 'returns true if the sentence contains every letter of the alphabet' do
    expect(is_pangram? pangram1).to eq true
    expect(is_pangram? pangram2).to eq true
  end

  it 'returns false if the sentence does not contain every letter of the alphabet' do
    expect(is_pangram? reg_sentence1).to eq false
    expect(is_pangram? reg_sentence2).to eq false
    expect(is_pangram? reg_sentence3).to eq false
  end
end
