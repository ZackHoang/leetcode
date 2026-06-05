# @param {Integer[]} nums
# @return {Integer}
def longest_subarray(nums)
  if nums.length == 0
    return 0
  end
  if nums.all? { | num | num == 1 }
    return nums.length - 1
  end
  left_ptr = 0
  num_of_zeroes = 0
  nums.each do | num |
    if num == 0
        num_of_zeroes += 1
    end
    if num_of_zeroes > 1
      if (nums[left_ptr] == 0)
        num_of_zeroes -= 1
      end
      left_ptr += 1
    end
  end
  return nums.length - left_ptr - 1
end