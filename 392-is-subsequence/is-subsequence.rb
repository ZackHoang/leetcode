# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  if (s.length == 0)
    return true
  end
  s_index = 0
  t_index = 0
  while t_index < t.length
    if s[s_index] == t[t_index]
      s_index += 1
    end
    t_index += 1
  end
  return s_index == s.length ? true : false
end