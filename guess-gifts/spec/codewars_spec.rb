require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  let(:wishlist2) {[{name:"card game", size:"small", clatters:"no", weight:"light"},{name:"toy car", size:"medium", clatters:"a bit", weight:"medium"},{name:"mini puzzle", size:"small", clatters:"yes", weight:"light"}]}
  let(:presents2) {[{size:"medium", clatters:"a bit", weight:"medium"}, {size:"small", clatters:"yes", weight:"light"}]}

  let(:wishlist3) {[{name:"puzzle", size:"medium", clatters:"yes", weight:"light"}, {name:"cuddly toy", size:"medium", clatters:"no", weight:"light"}, {name:"pullover", size:"medium", clatters:"no", weight:"light"}]}
  let(:presents3) {[{size:"medium", clatters:"yes", weight:"light"}, {size:"medium", clatters:"no", weight:"light"}]}

  let(:wishlist4) {[{name:"card game", size:"small", clatters:"no", weight:"light"}, {name:"socks", size:"small", clatters:"no", weight:"light"}, {name:"pack of marbles", size:"small", clatters:"yes", weight:"medium"}] }
  let(:presents4) {[{size:"small", clatters:"no", weight:"light"}, {size:"small", clatters:"yes", weight:"medium"}]}

  let(:wishlist5) {[{name:"card game", size:"small", clatters:"no", weight:"light"}, {name:"bobble hat", size:"small", clatters:"no", weight:"light"}, {name:"socks", size:"small", clatters:"no", weight:"light"}] }
  let(:presents5) {[{size:"small", clatters:"no", weight:"light"}, {size:"small", clatters:"no", weight:"light"}]}

  let(:wishlist6) {[{name:"bike", size:"large", clatters:"a bit", weight:"heavy"}, {name:"pack of marbles", size:"small", clatters:"yes", weight:"medium"}, {name:"mini puzzle", size:"small", clatters:"yes", weight:"light"}, {name:"pack of crayons", size:"small", clatters:"a bit", weight:"light"}, {name:"backpack", size:"medium", clatters:"no", weight:"light"}, {name:"pullover", size:"medium", clatters:"no", weight:"light"}, {name:"cuddly toy", size:"medium", clatters:"no", weight:"light"}, {name:"poster", size:"medium", clatters:"no", weight:"light"}, {name:"rocking horse", size:"large", clatters:"no", weight:"heavy"}, {name:"socks", size:"small", clatters:"no", weight:"light"}, {name:"humming top", size:"medium", clatters:"a bit", weight:"light"}, {name:"toy car", size:"medium", clatters:"a bit", weight:"medium"}, {name:"bobble hat", size:"small", clatters:"no", weight:"light"}, {name:"train set", size:"large", clatters:"a bit", weight:"medium"}, {name:"card game", size:"small", clatters:"no", weight:"light"}, {name:"puzzle", size:"medium", clatters:"yes", weight:"light"}, {name:"game console", size:"medium", clatters:"a bit", weight:"medium"}] }
  let(:presents6) {[{size:"medium", clatters:"yes", weight:"light"}, {size:"small", clatters:"no", weight:"light"}, {size:"large", clatters:"a bit", weight:"medium"}, {size:"medium", clatters:"no", weight:"light"}, {size:"medium", clatters:"a bit", weight:"medium"}] }

  it 'given wishlist 2' do
    expect(guess_gifts(wishlist2, presents2)).to eq ["mini puzzle", "toy car"]
  end

  it 'matches ambiguous presents' do
    expect(guess_gifts(wishlist3, presents3)).to eq ["cuddly toy", "pullover", "puzzle"]
  end

  it 'matches ambiguous presents' do
    expect(guess_gifts(wishlist4, presents4)).to eq ["card game", "pack of marbles", "socks"]
  end

  it 'does not return duplicates' do
    expect(guess_gifts(wishlist5, presents5)).to eq ["bobble hat", "card game", "socks"]
  end

  it 'works with a greater wishlist' do
    expect(guess_gifts(wishlist6, presents6)).to eq ["backpack", "bobble hat", "card game", "cuddly toy", "game console", "poster", "pullover", "puzzle", "socks", "toy car", "train set"]
  end
end


=begin
# Regex to find hashrocket symbols DEATH TO HASHROCKETS!!
(?:[\:])([\w]*)(?:\s?\=>)
# Replace the capture group with:
$1:




=end

