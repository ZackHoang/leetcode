# @param {String} s
# @return {Boolean}
def is_valid(s)
    match = {
        ")" => "(",
        "]" => "[",
        "}" => "{"
    }
    stack = []
    for i in 0..s.length
        if match.values.include?(s[i])
            stack.push(s[i])
        else
            if stack.last == match[s[i]]
                stack.pop
            else
                return false
            end
        end
    end
    return true
end