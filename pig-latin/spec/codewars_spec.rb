require_relative 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:text1) {'Pig latin is cool'}
  let(:text2) {'This is my string'}
  let(:text3) {'Dura lex sed lex'}
  let(:text4) {'In vino veritas'}
  let(:text5) {'Nunc est bibendum'}
  let(:text6) {'Lux in tenebris lucet'}
  let(:text7) {'Cucullus non facit monachum'}
  let(:text8) {'Quis custodiet ipsos custodes ?'}

  it 'Move the first letter of each word to the end of it, then add ay to the end of the word.' do
    expect(pig_it(text1)).to eq 'igPay atinlay siay oolcay'
    expect(pig_it(text2)).to eq 'hisTay siay ymay tringsay'
    expect(pig_it(text3)).to eq 'uraDay exlay edsay exlay'
    expect(pig_it(text4)).to eq 'nIay inovay eritasvay'
    expect(pig_it(text5)).to eq 'uncNay steay ibendumbay'
    expect(pig_it(text6)).to eq 'uxLay niay enebristay ucetlay'
    expect(pig_it(text7)).to eq 'ucullusCay onnay acitfay onachummay'
    expect(pig_it(text8)).to eq 'uisQay ustodietcay psosiay ustodescay ?'
  end
end


=begin
str = "How can mirrors be real if our eyes aren't real";
Test.assert_equals(str.toJadenCase(), "How Can Mirrors Be Real If Our Eyes Aren't Real")

abcdefghijklmnopqrstuvwxyz
nopqrstuvwxyzabcdefghijklm
=end
