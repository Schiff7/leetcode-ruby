# 3. Longest Substring Without Repeating Characters

# Given a string, find the length of the longest substring without repeating characters.

# Examples:

# Given "abcabcbb", the answer is "abc", which the length is 3.

# Given "bbbbb", the answer is "b", with the length of 1.

# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring,
# "pwke" is a subsequence and not a substring.

# @param {String} s
# @return {Integer} max_length
def length_of_longest_substring(s)
  tmp = ''
  max_length = 0
  s.each_char do |c|
    puts tmp
    index = tmp.index(c)
    if index
      if tmp.length > max_length
        max_length = tmp.length
      end
      tmp = tmp[index + 1..-1]
      tmp << c
    else
      tmp << c
    end
  end
  if tmp.length > max_length
    max_length = tmp.length
  end
  return max_length
end

puts length_of_longest_substring('abcabcbb')