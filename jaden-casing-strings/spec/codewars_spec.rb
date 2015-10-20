require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: Jaden casing strings: When writing on Twitter, he was known for almost always capitalizing every word.' do

  let(:string1) { 'How can mirrors be real if our eyes aren’t real' }
  let(:string2) { 'The moment that truth is organized it becomes a lie.' }

  it 'convert strings to how they would be written by Jaden Smith' do
    expect(string1.to_jaden_case).to eq 'How Can Mirrors Be Real If Our Eyes Aren’t Real'
    expect(string2.to_jaden_case).to eq 'The Moment That Truth Is Organized It Becomes A Lie.'
  end
end


=begin
str = "How can mirrors be real if our eyes aren't real";
Test.assert_equals(str.toJadenCase(), "How Can Mirrors Be Real If Our Eyes Aren't Real")
=end
