# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    original_candies = Marshal.load(Marshal.dump(candies))
    result = Array.new(candies.length, nil)
    max = nil
    for i in 0..candies.length - 1
        candies[i] += extra_candies
    end
    for y in 0..candies.length - 1
        if candies[y] >= original_candies.max
            result[y] = true
        else 
            result[y] = false
        end
    end
    return result
end