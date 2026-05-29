# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  occurences = {}
  set = Set.new()
  arr.each do | elem |
    occurences[elem] == nil ? occurences[elem] = 1 : occurences[elem] += 1
  end
  occurences.values.each do | val |
    set.include?(val) ? (return false) : set.add(val)
  end
  return true 
end