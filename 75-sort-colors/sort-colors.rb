# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    occurences = {}
    for i in 0...nums.length
        if occurences[nums[i]] == nil
            occurences[nums[i]] = 1
        else
            occurences[nums[i]] += 1
        end
    end
    for i in 0...nums.length
        if occurences[0] != nil && occurences[0] > 0
            nums[i] = 0
            occurences[0] -= 1
        elsif occurences[1] != nil && occurences[1] > 0
            nums[i] = 1
            occurences[1] -= 1
        elsif occurences[2] != nil && occurences[2] > 0
            nums[i] = 2
            occurences[2] -= 1
        end
    end
    return
end