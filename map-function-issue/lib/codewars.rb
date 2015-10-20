require 'pry'

def map(array, func)
  return 'given argument is not a function' unless func.respond_to? :call
  arr = []
  i = 0
  while i < array.length do
    if array[i].is_a?(Integer) || array[i].to_i.is_a?(Integer) && array[i].to_i > 0
      arr << func.call(array[i].to_i)
    else
      return 'array should contain only numbers'
    end
    i += 1
  end
  arr
end
