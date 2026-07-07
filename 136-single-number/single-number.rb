# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  hash = nums.tally
  return hash.key(1)
end