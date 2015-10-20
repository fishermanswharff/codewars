require 'pry'

def caffeineBuzz(n)
  string = ''
  n % 12 == 0 ? string << 'Coffee' : n % 3 == 0 ? string << 'Java' : string << 'mocha_missing!'
  string << 'Script' if n.even? && !(string == 'mocha_missing!')
  string
end