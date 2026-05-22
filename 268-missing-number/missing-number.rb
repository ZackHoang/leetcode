# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    expected_sum = nums.length * (nums.length + 1) / 2
    real_sum = nums.sum
    return expected_sum - real_sum
end