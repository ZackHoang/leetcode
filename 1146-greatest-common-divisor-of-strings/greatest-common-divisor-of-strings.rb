def can_construct(pattern, target)
  constructed = ""
  while (constructed.length < target.length)
    constructed += pattern
  end
  return constructed == target
end

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  [str1.length, str2.length].min.downto(0) do | length |
    candidate = str1[0..length]
    if can_construct(candidate, str1) && can_construct(candidate, str2)
      return candidate
    end
  end
  return "" 
end