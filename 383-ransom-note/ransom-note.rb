# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    count = Hash.new(0)
    magazine.each_char { |char| count[char] += 1 }
    ransom_note.each_char do |char|
        if count[char] == 0
            return false
        end
        count[char] -= 1
    end
    return true
end