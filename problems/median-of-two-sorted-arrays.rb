# 4. Median of Two Sorted Arrays

# There are two sorted arrays nums1 and nums2 of size m and n respectively.

# Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

# Example 1:
# nums1 = [1, 3]
# nums2 = [2]

# The median is 2.0
# Example 2:
# nums1 = [1, 2]
# nums2 = [3, 4]

# The median is (2 + 3)/2 = 2.5

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float} ...
# First accepted.
# Will be reviewed later.
def find_median_sorted_arrays(nums1, nums2)
  m, n = nums1, nums2
  length = m.length + n.length
  arr = []
  cursor = 0
  mid = (length/2).floor + 1
  while arr.length < mid
    case m[0] <=> n[0]
    when -1
      arr << m.shift
    when 0
      arr << m.shift << n.shift
    when 1
      arr << n.shift
    else
      if m then arr += m end
      if n then arr += n end
    end 
  end
  if length % 2 === 0
    return (arr[mid - 1] + arr[mid - 2]) / 2.0
  else
    return arr[mid - 1]
  end
end

nums1 = [1, 2]
nums2 = [3]
puts find_median_sorted_arrays(nums1, nums2)