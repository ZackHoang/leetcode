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
def good_nodes(root)

  count_goods(root)
    
end

def count_goods(root, max = -Float::INFINITY)
  return 0 unless root
  goods = root.val >= max ? 1 : 0
  goods += count_goods(root.left, [max, root.val].max)
  goods += count_goods(root.right, [max, root.val].max)

  return goods
end