# @param {String} s
# @param {String} t
# @param {Integer} max_cost
# @return {Integer}
def equal_substring(s, t, max_cost)
  curr_cost = 0
  l = 0 
  res = 0
  for r in (0...s.length)
    curr_cost += (s[r].ord - t[r].ord).abs
    while curr_cost > max_cost
      curr_cost -= (s[l].ord - t[l].ord).abs
      l += 1
    end
    res = [res, r - l + 1].max
  end
  return res
end