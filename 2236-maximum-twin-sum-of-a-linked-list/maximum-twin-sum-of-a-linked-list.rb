# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def pair_sum(head)
  slow, fast = head, head
  max_sum = 0 
  while fast && fast.next
    fast = fast.next.next
    slow = slow.next
  end
  curr, prev = slow, nil
  while curr
    curr.next, prev, curr = prev, curr, curr.next
  end
  while prev
    max_sum = [max_sum, head.val + prev.val].max
    prev = prev.next
    head = head.next
  end
  return max_sum
end