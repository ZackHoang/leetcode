# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  max_on_right = []
  arr.each_index do | i |
    if (i == arr.length - 1)
      max_on_right.push(-1)
      break
    end
    max_elem = arr.slice(i + 1, arr.length - 1).max
    max_on_right.push(max_elem)
  end
  return max_on_right
end