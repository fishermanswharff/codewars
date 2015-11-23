require 'pry'

def perimeter(n)
  sequence = [0,1]
  i = 1
  while i <= n do
    sequence << sequence[i] + sequence[i - 1]
    i += 1
  end
  sequence.reduce(&:+) * 4
end
