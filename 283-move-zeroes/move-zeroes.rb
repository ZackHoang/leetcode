# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    zeroes_arr = []
    nums.each_index do | i |
        if (nums[i] == 0)
            zeroes_arr.push(0)
        end
    end
    nums.select! { | num | num != 0 }
    nums.concat(zeroes_arr)
end