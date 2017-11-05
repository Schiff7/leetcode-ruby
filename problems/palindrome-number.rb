# 9. Palindrome Number

# Determine whether an integer is a palindrome. Do this without extra space.

# @param {Integer} x
# @return {Boolean}
# First accepted.
def is_palindrome(x)
  if x < 0
    return false
  end
  return x.to_s === x.to_s.reverse
end

# @param {Integer} x
# @return {Boolean}
# Sample 178 ms submission.
def is_palindrome(x)
  return false if x < 0 
  num = x
  rev = 0
  while (x > 0)
      dig = x % 10
      rev = rev * 10 + dig
      x = x / 10
  end
  num == rev
end

puts is_palindrome(1112321)