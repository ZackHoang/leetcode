# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = {}
    nums.each do | num |
        if hash[num] == nil
            hash[num] = 1
        else
            hash[num] += 1
        end
    end
    return hash.key(hash.values.max)
end