require 'pry'

def word_pattern(pattern,string)
  map = {}
  symbols = pattern.split('').map(&:to_sym)
  words = string.split(' ')
  symbols.each_with_index do |s,i|
    if map[s]
      return false if map.any? { |k,v| v == map[s] && k != s }
      return false unless map[s] == words[i]
    else
      map[s] = words[i]
    end
  end
  return true
end
