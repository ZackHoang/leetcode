# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    prefix = [0]
    curr_gain = 0
    gain.each do | gain |
      curr_gain += gain
      prefix.push(curr_gain)
    end
    p prefix
    return prefix.max
end