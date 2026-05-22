# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    return nums.uniq.sort[-3] || nums.max
end