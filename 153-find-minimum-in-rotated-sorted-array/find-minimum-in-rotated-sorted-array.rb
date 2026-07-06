# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  first_true_index = -1
  left = 0
  right = nums.length - 1
  while (left <= right)
    mid = (left + right) / 2
    if (nums[mid] <= nums[nums.length - 1])
      first_true_index = mid
      right = mid - 1
    else
      left = mid + 1
    end
  end
  return nums[first_true_index]
end