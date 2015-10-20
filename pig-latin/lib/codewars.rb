require 'pry'

def pig_it(text)
  text.split(' ').map { |string| string.match(/\w/) ? string.insert(-1, string.slice!(0) + 'ay') : string  }.join(' ')
end
