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
def max_level_sum(root)
  level_hash = {}
  queue = Queue.new()
  queue.push(root)
  level = 1
  while (!queue.empty?)
    level_size = queue.size
    level_size.times do | i |
      curr_node = queue.pop()
      level_hash[level] == nil ? level_hash[level] = curr_node.val : level_hash[level] += curr_node.val
      queue.push(curr_node.left) if curr_node.left
      queue.push(curr_node.right) if curr_node.right
    end
    level += 1
  end
  return level_hash.max_by { | k, v | v }[0]
end