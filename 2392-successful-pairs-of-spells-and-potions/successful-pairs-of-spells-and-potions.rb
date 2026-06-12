# @param {Integer[]} spells
# @param {Integer[]} potions
# @param {Integer} success
# @return {Integer[]}
def successful_pairs(spells, potions, success)
  pairs = []
  potions.sort!
  spells.each do | spell |
    left = 0
    right = potions.length - 1
    while (left <= right)
      mid = (left + right) / 2
      if (spell * potions[mid] < success)
        left = mid + 1
      elsif (spell * potions[mid] >= success)
        right = mid - 1
      end
    end
    pairs.push(potions.length - left)
  end
  return pairs
end