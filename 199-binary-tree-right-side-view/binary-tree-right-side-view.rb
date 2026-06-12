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
# @return {Integer[]}
def right_side_view(root)
  return [] if root == nil
  queue = Queue.new()
  queue.push(root)
  vals = []
  while !queue.empty?
    level_size = queue.size
    level_size.times do | index |
      node = queue.pop()
      if index == level_size - 1
        vals.push(node.val)
      end
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
  end
  return vals
end