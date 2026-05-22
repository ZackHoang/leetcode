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
# @return {TreeNode}
def invert_tree(root)
    if root == nil
        return []
    end
    queue = Queue.new
    queue.push(root)
    while !queue.empty?
        queue.size.times do
            curr = queue.pop
            tmp = curr.left
            curr.left = curr.right
            curr.right = tmp
            queue.push(curr.left) if curr.left != nil
            queue.push(curr.right) if curr.right != nil
        end
    end
    return root
end