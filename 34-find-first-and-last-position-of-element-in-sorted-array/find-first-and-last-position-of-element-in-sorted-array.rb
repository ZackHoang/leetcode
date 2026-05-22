# @param {Interger[]} arr
# @param {Interger} target
# @param {Boolean} left_bias
# @return {Interger} 
def binary_search(arr, target, left_bias)
    left = 0
    right = arr.length - 1
    index = -1
    while (left <= right)
        mid = (left + right) / 2
        if arr[mid] > target
            right = mid - 1
        elsif arr[mid] < target
            left = mid + 1
        else
            index = mid
            if left_bias
                right = mid - 1
            else
                left = mid + 1
            end
        end
    end
    return index
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    left = binary_search(nums, target, true)
    right = binary_search(nums, target, false)
    return [left, right]
end