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
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
  return nil if root == nil
  if root.val > key
    root.left = delete_node(root.left, key)
    return root
  end
  if root.val < key
    root.right = delete_node(root.right, key)
    return root
  end
  if root.left == nil
    return root.right
  end
  if root.right == nil
    return root.left
  end
  successor = root.right
  while successor.left
    successor = successor.left
  end
  successor.left = root.left
  root = root.right
  return root
end