# @param {Integer[]} nums
# @return {Boolean}
def increasing_triplet(nums)
    if (nums.length < 3)
        return false
    end
    smallest = Float::INFINITY 
    second_smallest = Float::INFINITY 
    nums.each do | num |
        if (num > second_smallest)
            return true
        elsif (num <= smallest)
            smallest = num
        else
            second_smallest = num
        end
    end
    return false
end