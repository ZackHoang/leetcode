# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temps)
    results = Array.new(temps.length, 0)
    stack = []
    # UPVOTE !
    temps.each_with_index do |temp, i|
      while !stack.empty? && temps[stack.last] < temp
        index = stack.pop
        results[index] = i - index
      end
      stack.push(i)
    end
    return results
end