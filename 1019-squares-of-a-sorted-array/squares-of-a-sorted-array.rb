# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    left_pointer = 0
    right_pointer = nums.length - 1
    new_sorted_squared_nums = Array.new(nums.length)
    current_pointer = nums.length - 1
    while left_pointer <= right_pointer
        if nums[left_pointer].abs > nums[right_pointer].abs
            new_sorted_squared_nums[current_pointer] = nums[left_pointer] ** 2
            left_pointer += 1
        else
            new_sorted_squared_nums[current_pointer] = nums[right_pointer] ** 2
            right_pointer -= 1
        end
        current_pointer -= 1
    end
    return new_sorted_squared_nums 
end