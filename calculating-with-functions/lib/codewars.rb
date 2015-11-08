require 'pry'

def zero(options = {})
  options.length > 0 ? 0.0.method(options.keys[0]).(options.values[0]) : 0
end

def one(options = {})
  options.length > 0 ? 1.0.method(options.keys[0]).(options.values[0]) : 1
end

def two(options = {})
  options.length > 0 ? 2.0.method(options.keys[0]).(options.values[0]) : 2
end

def three(options = {})
  options.length > 0 ? 3.0.method(options.keys[0]).(options.values[0]) : 3
end

def four(options = {})
  options.length > 0 ? 4.0.method(options.keys[0]).(options.values[0]) : 4
end

def five(options = {})
  options.length > 0 ? 5.0.method(options.keys[0]).(options.values[0]) : 5
end

def six(options = {})
  options.length > 0 ? 6.0.method(options.keys[0]).(options.values[0]) : 6
end

def seven(options = {})
  options.length > 0 ? 7.0.method(options.keys[0]).(options.values[0]) : 7
end

def eight(options = {})
  options.length > 0 ? 8.0.method(options.keys[0]).(options.values[0]) : 8
end

def nine(options = {})
  options.length > 0 ? 9.0.method(options.keys[0]).(options.values[0]) : 9
end

def plus(arg)
  {'+' => arg}
end

def minus(arg)
  {'-' => arg}
end

def times(arg)
  {'*' => arg}
end

def divided_by(arg)
  {'/' => arg}
end


