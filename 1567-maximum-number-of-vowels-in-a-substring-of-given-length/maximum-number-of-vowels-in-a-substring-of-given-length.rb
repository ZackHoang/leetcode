# @param {String} s
# @param {Integer} k
# @return {Integer}
def max_vowels(s, k)
  vowels = ['a', 'e', 'i', 'o', 'u']

  count = 0

  # first window
  for i in 0...k
    count += 1 if vowels.include?(s[i])
  end

  max_count = count

  # slide the window
  for i in k...s.length
    count -= 1 if vowels.include?(s[i - k])
    count += 1 if vowels.include?(s[i])

    max_count = [max_count, count].max
  end

  return max_count
end