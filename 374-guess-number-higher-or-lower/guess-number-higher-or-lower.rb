# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
  left = 1
  right = n
  answer = 1
  while (left <= right)
    mid = (right + left) / 2
    result = guess(mid)
    if (result == -1)
      right = mid - 1
    elsif (result == 1)
      left = mid + 1
    else
      answer = mid
      break
    end
  end
  return answer
end