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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  def DFS(node, curr_sum, target_sum)
    return false if node == nil
    curr_sum += node.val
    if !node.left && !node.right
      return curr_sum == target_sum
    end
    return DFS(node.left, curr_sum, target_sum) || DFS(node.right, curr_sum, target_sum)
  end
  return DFS(root, 0, target_sum)
end