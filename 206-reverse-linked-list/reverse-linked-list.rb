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
def reverse_list(head)
  dummy_node = ListNode.new("x", head)
  arr_nodes = []
  index = 0
  while (head != nil)
    arr_nodes.push(head.val)
    head = head.next
  end
  arr_nodes.reverse!
  new_head = dummy_node.next
  while (new_head != nil)
    new_head.val = arr_nodes[index]
    index += 1
    new_head = new_head.next
  end
  return dummy_node.next
end