# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
  set_1 = Set.new(nums1)
  set_2 = Set.new(nums2)
  nums_unique_1 = []
  nums_unique_2 = []
  nums1.each do | num |
    if !set_2.include?(num) && !nums_unique_1.include?(num)
      nums_unique_1.push(num)
    end
  end
  nums2.each do | num |
    if !set_1.include?(num) && !nums_unique_2.include?(num)
      nums_unique_2.push(num)
    end
  end
  return [nums_unique_1, nums_unique_2]
end