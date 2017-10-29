# 2. Add Two Numbers

# You are given two non-empty linked lists representing two non-negative integers.
# The digits are stored in reverse order and each of their nodes contain a single digit.
# Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8

# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
# First accepted.
def add_two_numbers(l1, l2)
  left, right = l1, l2
  firstNode = nil
  iterator = nil
  ctl = true
  tmp = 0
  while left or right
    left = left ? left : ListNode.new(0)
    right = right ? right : ListNode.new(0)
    sum = left.val + right.val + tmp
    tmp = (sum >= 10) ? 1 : 0
    rem = (sum >= 10) ? (sum - 10) : sum
    if ctl
      firstNode = ListNode.new(rem)
      iterator = firstNode
      ctl = false
    else
      iterator.next = ListNode.new(rem)
      iterator = iterator.next
    end
    left = left.next
    right = right.next
  end
  if(tmp === 1)
    iterator.next = ListNode.new(tmp)
  end
  return firstNode
end

# @param {Array} arr
# @return  {ListNode} result
def create_linked_list(arr)
  result = ListNode.new(arr.shift)
  iterator = result
  arr.each do |i|
    iterator.next = ListNode.new(i)
    iterator = iterator.next
  end
  return result
end

# @param {ListNode} l
# @return {string} result
def show_linked_list(l)
  iterator = l
  result = "(#{iterator.val}"
  while iterator.next
    iterator = iterator.next
    result += "->#{iterator.val}"
  end
  result += ")"
  return result
end

l1 = create_linked_list([1, 2, 4, 5, 9])
l2 = create_linked_list([5, 6, 4, 5])
result = add_two_numbers(l1, l2)
puts show_linked_list(result)
