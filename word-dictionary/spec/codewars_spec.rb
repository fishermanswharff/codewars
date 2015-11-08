require 'spec_helper'
require_relative '../lib/codewars'

RSpec.describe 'codewars kata: ' do

  before :all do
    @wd = WordDictionary.new
  end

  it 'adds a word' do
    @wd.add_word('a')
    @wd.add_word('at')
    @wd.add_word('ate')
    @wd.add_word('ear')
    @wd.add_word('co')
    @wd.add_word('cod')
    @wd.add_word('code')
    @wd.add_word('codewars')
  end

  it 'searches and finds the word' do
    expect(@wd.search('a')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('a.')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('a.e')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('b')).to eq false
  end
  it 'finds the word' do
    expect(@wd.search('e.')).to eq false
  end
  it 'finds the word' do
    expect(@wd.search('ea.')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('ea..')).to eq false
  end
  it 'finds the word' do
    expect(@wd.search('........')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('c.o')).to eq false
  end
  it 'finds the word' do
    expect(@wd.search('cod.')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('c.o')).to eq false
  end
  it 'finds the word' do
    expect(@wd.search('co..w..s')).to eq true
  end
  it 'finds the word' do
    expect(@wd.search('co..w..')).to eq false
  end
end
