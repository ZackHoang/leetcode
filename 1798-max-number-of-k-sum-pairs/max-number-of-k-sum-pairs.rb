# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_operations(nums, k)
  if (nums.length == 0)
    return 0
  end
  nums.sort!
  num_pairs = 0
  left = 0
  right = nums.length - 1
  while (left < right)
    current_sum = nums[left] + nums[right]
    if (current_sum == k)
      num_pairs += 1
      left += 1
      right -= 1
    elsif (current_sum > k)
      right -= 1
    else
      left += 1
    end
  end
  return num_pairs
end