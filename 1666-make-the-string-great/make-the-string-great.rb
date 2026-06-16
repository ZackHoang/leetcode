# @param {String} s
# @return {String}
def make_good(s)
  return s if s.length == 1 || s.length == 0
  stack = []
  s.each_char.with_index do | i |
    if (stack.length > 0 && stack[-1] != s[i] && stack[-1].downcase == s[i].downcase)
      stack.pop()
    else
      stack.push(s[i])
    end
  end
  return stack.join
end