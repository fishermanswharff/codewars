require 'pry'

def lcs(stringa, stringb)
  start = 1
  enda = stringa.length
  endb = stringb.length

  while start <= enda && start <= endb && stringa[start] == stringb[start] do
    start += 1
  end

  while start <= enda && start <= endb && stringa[enda] == stringb[endb]
    enda -= 1
    endb -= 1
  end

  c = [start-1..enda, start-1..endb]
  for i in start..enda
    for j in start..endb
      if stringa[i]  == stringb[j]
        c[i,j] = c[i -1, j-1] + 1
      else
        c[i,j] = [c[i,j-1], c[i-1,j]].max
      end
    end
  end
  puts c
  c[enda,endb]
end

=begin
function LCS(X[1..m], Y[1..n])
  start := 1
  m_end := m
  n_end := n
  trim off the matching items at the beginning
  while start ≤ m_end and start ≤ n_end and X[start] = Y[start]
    start := start + 1
  trim off the matching items at the end
  while start ≤ m_end and start ≤ n_end and X[m_end] = Y[n_end]
    m_end := m_end - 1
    n_end := n_end - 1
  C = array(start-1..m_end, start-1..n_end)
  only loop over the items that have changed
  for i := start..m_end
    for j := start..n_end
      the algorithm continues as before ...
      if X[i] = Y[j]
        C[i,j] := C[i-1,j-1] + 1
      else
        C[i,j] := max(C[i,j-1], C[i-1,j])
  return C[m,n]


=end
