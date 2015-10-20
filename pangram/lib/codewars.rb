require 'pry'

def is_pangram? string
  (('a'..'z').to_a - string.downcase.gsub(/[\s\W\d]/, '').split('').sort).length == 0
end