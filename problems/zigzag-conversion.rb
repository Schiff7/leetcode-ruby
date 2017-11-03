# 6. ZigZag Conversion

# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

# P   A   H   N
# A P L S I I G
# Y   I   R
# And then read line by line: "PAHNAPLSIIGYIR"
# Write the code that will take a string and make this conversion given a number of rows:

# string convert(string text, int nRows);
# convert("PAYPALISHIRING", 3) should return "PAHNAPLSIIGYIR".

# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  if num_rows === 1
    return s
  end
  h = {}
  i = 0
  n = 0
  s.each_char do |c|
    if !h[i]
      h[i] = ''
    end
    h[i] += c
    v = n / (num_rows - 1) % 2
    i = v === 0 ? i + 1 : i - 1
    n += 1
  end
  result = ''
  h.each_value do |value| result += value end
  return result
end

puts convert('PAYPALISHIRING', 1)