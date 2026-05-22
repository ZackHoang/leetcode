# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    occurences_t = {}
    occurences_s = {}
    for i in 0..t.length - 1
        if occurences_t[t[i]] == nil
            occurences_t[t[i]] = 1
        else
            occurences_t[t[i]] += 1
        end
    end
    for i in 0..s.length - 1
        if occurences_s[s[i]] == nil
            occurences_s[s[i]] = 1
        else
            occurences_s[s[i]] += 1
        end
    end
    occurences_t.each do | key, value |
        if occurences_s[key] == nil || occurences_s[key] < value
            return key
        end
    end 
end