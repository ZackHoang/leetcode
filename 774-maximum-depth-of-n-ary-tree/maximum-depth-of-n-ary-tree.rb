# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {int}
def maxDepth(root)
    return 0 if root == nil
    depth = 0
    queue = [root]
    while !queue.empty?
        queue.length.times do |i|
            curr = queue.shift
            curr.children.each { |child| queue.push(child) }
        end
        depth += 1
    end
    return depth
end