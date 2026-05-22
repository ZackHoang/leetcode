# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    left = 1
    right = num
    while left <= right
        mid = (left + right) / 2
        puts mid
        if mid * mid > num
            right = mid - 1
        elsif mid * mid < num
            left = mid + 1
        else
            return true
        end
    end
    return false
end