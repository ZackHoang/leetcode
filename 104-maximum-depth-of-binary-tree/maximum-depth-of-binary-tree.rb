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
# @return {Integer}
def max_depth(root)
  return 0 if root == nil
  max_depth = 0
  queue = Queue.new
  queue.push(root)
  while !queue.empty?
    size = queue.size
    size.times do
      node = queue.pop
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    max_depth += 1
  end
  return max_depth    
end