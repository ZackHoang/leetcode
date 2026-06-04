# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def longest_ones(nums, k)
  left = 0
  num_of_zeroes = 0
  nums.each_index do | i |
    if (nums[i] == 0)
      num_of_zeroes += 1
    end
    if (num_of_zeroes > k)
      if (nums[left] == 0)
        num_of_zeroes -= 1
      end
      left += 1
    end
  end
  return nums.length - left
end