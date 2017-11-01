# 5. Longest Palindromic Substring

# Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

# Example:

# Input: "babad"

# Output: "bab"

# Note: "aba" is also a valid answer.
# Example:

# Input: "cbbd"

# Output: "bb"

# @param {String} s
# @return {String} 
# First accepted after six times submissions..
# With a long runtime.
# Need a better solution. 
def longest_palindrome(s)
  if s.length === 1
    return s
  end
  max_length = 0
  result = {}
  index = 0
  length = s.length - 2
  while index <= length
      i = index
      j = i + 1
      sum_length = 0
      while i >= 0 and j <= length + 1 
        if s[i] == s[j]
          sum_length += 1
        else
          break
        end
        i -= 1
        j += 1
      end
      tmp_length = sum_length * 2
      if tmp_length >= max_length
        max_length = tmp_length
        result[max_length] = s[i+1..j-1]
      end


      m = index - 1
      n = index + 1
      sum_length = 0
      while m >= 0 and n <= length + 1
        if s[m] == s[n]
          sum_length += 1
        else
          break
        end
        m -= 1
        n += 1
      end
      tmp_length = sum_length * 2 + 1
      if tmp_length >= max_length
        max_length = tmp_length
        result[max_length] = s[m+1..n-1]
      end
    index += 1
  end
  return result[max_length]
end

puts longest_palindrome("cvccccaaabcdcba")