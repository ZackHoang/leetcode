# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    window_total = 0
    right_pointer = k - 1
    left_pointer = 0
    if (nums.length == 1)
        return nums.last.to_f
    end
    for i in 0...k
        window_total += nums[i]
    end
    window_average = window_total.to_f / k
    left_pointer += 1
    right_pointer += 1
    while right_pointer <= nums.length - 1
        window_total = window_total - nums[left_pointer - 1] + nums[right_pointer]
        current_average = window_total.to_f / k
        if current_average > window_average
            window_average = current_average
        end
        left_pointer += 1
        right_pointer += 1
    end
    return window_average
end