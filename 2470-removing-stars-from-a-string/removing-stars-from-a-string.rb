# @param {String} s
# @return {String}
def remove_stars(s)
  non_star_s = []
  s.each_char do | char |
    if (char == "*")
      non_star_s.pop()
    else
      non_star_s.push(char)
    end
  end
  return non_star_s.join
end