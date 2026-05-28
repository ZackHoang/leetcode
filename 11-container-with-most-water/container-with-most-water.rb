# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  if (height.length == 0)
    return 0
  end
  left = 0
  max_water_store = 0
  right = height.length - 1
  while (left <= right)
    if (height[left] <= height[right])
      if height[left] * (right - left) >= max_water_store
        max_water_store = height[left] * (right - left)
      end
      left += 1
    else
      if height[right] * (right - left) >= max_water_store
        max_water_store = height[right] * (right - left)
      end
      right -= 1
    end
  end
  return max_water_store
end