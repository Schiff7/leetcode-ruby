# 7. Reverse Integer

# Reverse digits of an integer.

# Example1: x = 123, return 321
# Example2: x = -123, return -321

# Note:
# The input is assumed to be a 32-bit signed integer.
# Your function should return 0 when the reversed integer overflows.

# @param {Integer} x
# @return {Integer}
# First accepted.
def reverse(x)
  result = 0
  if x > 0
    result =  x.to_s.reverse.to_i
  end
  if x < 0
    result = -(-x).to_s.reverse.to_i
  end
  if result < -2147483648 or result > 2147483648 or result === 0
    result = 0
  end
  return result
end

puts reverse(-1234567)