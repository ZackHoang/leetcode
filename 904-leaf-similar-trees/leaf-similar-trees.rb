# BFS to maintain order
# @param {TreeNode} node
# @param {Interger[]} leaf_values
# return {Void}

def DFS(node, leaf_values)
  if !node
    return
  end

  if node.left == nil && node.right == nil
    leaf_values.push(node.val)
    return
  end

  DFS(node.left, leaf_values) if node.left
  DFS(node.right, leaf_values) if node.right    
end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  leaf_values_1 = []
  leaf_values_2 = []

  DFS(root1, leaf_values_1)
  DFS(root2, leaf_values_2)

  return leaf_values_1 == leaf_values_2
end