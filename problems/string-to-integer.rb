# 8. String to Integer (atoi)

# Implement atoi to convert a string to an integer.

# Hint: Carefully consider all possible input cases.
# If you want a challenge, please do not see below and ask yourself what are the possible input cases.


# @param {String} str
# @return {Integer}
def my_atoi(str)
  result = 0
  _str = str.gsub(/^(\s+)/, '')
  if result = _str[/^[+-]?\d+(?=\+*\-*)/]
    result = result.to_i
  else
    result = 0
  end
  if result > 2147483647
    return 2147483647
  end
  if result < -2147483648
    return -2147483648
  end
  return result
end

puts my_atoi('')