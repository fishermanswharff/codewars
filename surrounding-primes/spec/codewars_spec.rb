require 'spec_helper'
require_relative '../lib/codewars'

=begin
We need a function prime_bef_aft() that gives the largest prime
below a certain given value n,
befPrime or bef_prime (depending on the language),
and the smallest prime larger than this value,
aftPrime/aft_prime (depending on the language).

The result should be output in a list like the following:
primeBefAft == [befPrime, aftPrime]
If n is a prime number it will give two primes, n will not be
included in the result.

lets see some cases:
primeBefAft(100) == [97, 101]
primeBefAft(97) == [89, 101]
primeBefAft(101) == [97, 103]
=end

RSpec.describe '' do

  it 'returns the primes before and after a given number n' do
    expect(prime_bef_aft(100)).to eq [97, 101]
  end

  it 'if n is a prime, n will not be included in the result' do
    expect(prime_bef_aft(97)).to eq [89, 101]
    expect(prime_bef_aft(101)).to eq [97, 103]
  end

  it 'works for moderate numbers' do
    expect(prime_bef_aft(2132)).to eq [2131, 2137]
  end

  it 'works for large numbers too' do
    expect(prime_bef_aft(183346)).to eq [183343, 183349]
  end

end
