# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_middle(head)
  if (head.next == nil)
    return nil
  end
  dummy_node = ListNode.new("x", head)
  head_copy = head
  list_len = 0
  count = 0
  while head
    list_len += 1
    head = head.next
  end
  while head_copy
    if (count + 1 == (list_len / 2).floor)
      head_copy.next = head_copy.next.next
    end
    count += 1
    head_copy = head_copy.next
  end
  return dummy_node.next
end