# @param {String} s
# @return {String}
def reverse_words(s)
    return s.split(" ").reverse.join(" ")
end