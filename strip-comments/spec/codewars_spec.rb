# run with `rspec`
require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: strip comments' do

  let(:string1) { "apples, pears # and bananas\ngrapes\nbananas !apples" }
  let(:string2) { "a #b\nc\nd $e f g" }

  it 'removes comments based on the comment markers' do
    result = solution(string1, ["#", "!"])
    expect(result).to eq "apples, pears\ngrapes\nbananas"
  end

  it 'removes comments based on the comment markers' do
    result = solution(string2, ["#","$"])
    expect(result).to eq "a\nc\nd"
  end

end
