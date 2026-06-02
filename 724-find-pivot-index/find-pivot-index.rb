# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  prefix_sum = []
  suffix_sum = []
  accumulator = 0
  nums.each do | num |
    accumulator += num
    prefix_sum.push(accumulator)
  end
  accumulator = 0
  (nums.length - 1).downto(0) do | i |
    accumulator += nums[i]
    suffix_sum.unshift(accumulator)
  end
  for i in (0...nums.length)
    if (prefix_sum[i] == suffix_sum[i])
      return i
    end
  end
  return -1
end