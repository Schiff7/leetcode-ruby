# 1. Two Sum

# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution,and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Failed.
# Time Limit Exceeded.
def two_sum_1(nums, target)
  for i in 0..nums.length - 1
    for j in i + 1..nums.length - 1
      if nums[i] + nums[j] === target
        return Array.[](i, j)
      end
    end
  end
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# First accepted.
def two_sum_2(nums, target)
  l = nums.length - 1
  for n in 0..l
    if(i = nums.index(target - nums.shift))
      return [n, i + n + 1]
    end
  end
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Sample 56 ms submission
def two_sum_3(nums, target)
  counter = {}
  nums.each_with_index do |num, i|
      diff = target - num
      if counter[diff]
          return [counter[diff], i]
      else
          counter[num] = i
      end
  end
end