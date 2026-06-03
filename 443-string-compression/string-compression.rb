# @param {Character[]} chars
# @return {Integer}
def compress(chars)
  read_ptr = 0
  write_ptr = 0
  while (read_ptr < chars.length)
    end_group_ptr = read_ptr + 1
    while (end_group_ptr < chars.length && chars[read_ptr] == chars[end_group_ptr])
      end_group_ptr += 1
    end
    chars[write_ptr] = chars[read_ptr]
    write_ptr += 1
    count = end_group_ptr - read_ptr
    if count > 1
      count_str = count.to_s
      count_str.each_char do | char |
        chars[write_ptr] = char
        write_ptr += 1
      end
    end
    read_ptr = end_group_ptr
  end
  return write_ptr
end