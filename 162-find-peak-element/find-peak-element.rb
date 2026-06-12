# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  left = 0
  right = nums.length - 1
  while (left <= right)
    mid = left + ((right - left) / 2)
    if (mid > 0 && nums[mid] < nums[mid - 1])
      right = mid - 1
    elsif (mid < nums.length - 1 && nums[mid] < nums[mid + 1])
      left = mid + 1
    else
      return mid
    end
  end
end