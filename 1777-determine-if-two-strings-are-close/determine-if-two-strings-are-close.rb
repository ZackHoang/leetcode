# @param {String} word1
# @param {String} word2
# @return {Boolean}
def close_strings(word1, word2)
  frequencies_word_1 = word1.chars.tally
  frequencies_word_2 = word2.chars.tally
  same_chars = Set.new(frequencies_word_1.keys) == Set.new(frequencies_word_2.keys)
  same_frequencies_sorted = frequencies_word_1.values.sort == frequencies_word_2.values.sort
  return same_chars && same_frequencies_sorted
end