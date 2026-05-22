# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    if (head.next == nil)
        return head.next
    end
    dummy_node = ListNode.new("x", head)
    length = 1
    while head.next != nil
        length += 1
        head = head.next
    end 
    n_th_node_from_start = length - n + 1
    curr_n_th_node = 1
    prev = dummy_node
    curr = dummy_node.next
    while curr != nil
        nxt = curr.next
        if curr_n_th_node == n_th_node_from_start
            prev.next = nxt
        else
            prev = curr
        end
        curr_n_th_node += 1
        curr = nxt
    end
    return dummy_node.next
end