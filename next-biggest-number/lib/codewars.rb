require 'pry'

def next_bigger(n)
  string = n.to_s.split('')
  return -1 if string.length == 1
  i = string.length - 1
  while i > 0 do
    if string[i] > string[i-1]
      new_string = ''
      substring = string[i-1..-1].join('')
      sorted_array = string[i-1..-1].sort
      next_highest = sorted_array.detect { |d| d > substring[0] }
      new_string << next_highest
      sorted_array.delete_at(sorted_array.index(next_highest))
      for d in 0..sorted_array.length - 1
        new_string << sorted_array[d]
      end
      if substring.length == string.length
        return new_string.to_i
      else
        return (string[0..i-2].join('') + new_string).to_i
      end
    end
    i -= 1
  end
  return -1
end


=begin
'1234567890'

for the length of s-1, in this case 9

first iteration: i == 9
'1234567890'
          |
swap s[-1] with s[i-1]
'1234567809'
is that bigger? no, then move on

second iteration i == 8
'1234567890'
         |
swap s[-1] with s[i-1]
'1234567890'

—————————————————————————
tmp = s
last = s[-1]
num_to_swap = s[i-1]
tmp[i-1] = last
tmp[-1] = num_to_swap
tmp.to_i > n ? tmp.to_i : i -= 1

—————————————————————————
almost there!

s = n.to_s
return -1 if s.length == 1
i = s.length - 1
while i >= 0 do
  tmp = s
  num_to_swap = tmp[i-1]
  tmp[i-1] = tmp[i]
  tmp[i] = num_to_swap
  if tmp.to_i > n
    return tmp.to_i
  elsif i == 0
    return -1
  else
    i -= 1
  end
end

—————————————————————————
even closer!

s = n.to_s
return -1 if s.length == 1
i = s.length - 1
higher_numbers = []
while i >= 0 do
  tmp = String.new(s)
  j = i - 1
  while j >= 0 do
    num_to_swap = tmp[j]
    tmp[j] = tmp[i]
    tmp[i] = num_to_swap
    higher_numbers << tmp.to_i if tmp.to_i > n
    j -= 1
  end
  i -= 1
end
higher_numbers = higher_numbers.sort
higher_numbers.length == 0 ? -1 : higher_numbers[0]

=end
