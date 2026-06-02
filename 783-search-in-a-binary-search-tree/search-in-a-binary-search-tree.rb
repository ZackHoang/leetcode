# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  return nil if root == nil
  queue = Queue.new()
  queue.push(root)
  while !queue.empty?
    node = queue.pop()
    if (node.val == val)
      return node
    end
    queue.push(node.left) if node.left != nil
    queue.push(node.right) if node.right != nil
  end
end