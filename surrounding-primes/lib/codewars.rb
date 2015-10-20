require 'pry'

def prime_bef_aft(n)
  [prime_before(n), prime_after(n)]
end

def prime_before(n)
  i = n - 1
  while i > 2 do
    return i if is_prime?(i)
    i -= 1
  end
end

def prime_after(n)
  inf = 1.0/0.0
  i = n + 1
  while i < inf do
    return i if is_prime?(i)
    i += 1
  end
end

def is_prime?(n)
  for d in 2..(n - 1)
   if n % d == 0
    return false
   end
  end
  true
end
