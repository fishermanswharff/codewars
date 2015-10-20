require 'pry'

module Converter
  def self.to_ascii(hex)
    hex.split.pack('H*')
  end

  def self.to_hex(ascii)
    ascii.unpack('H*').join
  end
end