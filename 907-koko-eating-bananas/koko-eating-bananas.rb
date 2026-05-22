# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
def min_eating_speed(piles, h)
    left = 1
    right = piles.max
    res = right
    while left <= right
        k = (left + right) / 2
        hours = 0
        piles.each { |pile| hours += (pile/k.to_f).ceil }
        if hours <= h
            res = [res, k].min
            right = k - 1
        else
            left = k + 1
        end
    end
    return res
end