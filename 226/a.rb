# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
​
# @param {TreeNode} root
# @return {TreeNode}
# def invert_tree(root)
#     return nil if root.nil?
#     # root if root.left.nil? && root.right.nil?
#     inverted_left = invert_tree(root.left)
#     inverted_right = invert_tree(root.right)
#     root.right = inverted_left
#     root.left = inverted_right
#     root
# end
​
# ITERATIVE
def invert_tree(root)
    return nil if root.nil?
    queue = Array.new()
    queue.push(root)
    
    while queue.length > 0 do
        current = queue.shift()
        temp = current.left
        current.left = current.right
        current.right = temp
        queue.push(current.left) if !current.left.nil?
        queue.push(current.right) if !current.right.nil?
    end
    
    root
end