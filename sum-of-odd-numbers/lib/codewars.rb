require 'pry'

def row_sum_odd_numbers(n)
  # more eleganter
  # ——————————————
  n**3

  # my solution
  # ——————————————
  # start = n * (n-1) + 1
  # array = [start]
  # i = 0
  # while array.length < n do
  #   array << start + ((i+1) * 2)
  #   i += 1
  # end
  # array.inject(:+)
end
