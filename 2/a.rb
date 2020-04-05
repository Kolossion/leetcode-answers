# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
​
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
​
# ITERATIVE STRAT
def add_two_numbers(l1, l2)
    carry = 0
    newList = nil
    newListHead = nil
    l1node = l1
    l2node = l2
    
    while !(l1node.nil? && l2node.nil?) do
        x = !l1node.nil? ? l1node.val : 0
        y = !l2node.nil? ? l2node.val : 0
        sum = x + y + carry
        carry = sum / 10
        
        if newList.nil? then
            newList = ListNode.new(sum % 10)
            newListHead = newList
        else
            newList.next = ListNode.new(sum % 10)
            newList = newList.next
        end
            
        l1node = l1node.next if !l1node.nil?
        l2node = l2node.next if !l2node.nil?
    end
    
    if carry == 1 then
        newList.next = ListNode.new(1)
    end
    
    newListHead
end
​
# RECURSIVE STRAT
# def add_two_numbers(l1, l2)
#     add_two_nums_with_carry(l1, l2, 0)
# end
​
# def add_two_nums_with_carry(l1, l2, carry)
#     new_node = ListNode.new()
#     if l1.nil? && l2.nil? then
#         if carry > 0 then
#             newNode = ListNode.new(carry)
#             newNode.next = nil
#         end
#     elsif l1.nil? && !l2.nil? then
#         newVal = l2.val + carry
#         newCarry = newVal >= 10 ? 1 : 0
#         newNode = ListNode.new(newVal % 10)
#         newNode.next = add_two_nums_with_carry(nil, l2.next, newCarry)
#     elsif !l1.nil? && l2.nil? then
#         newVal = l1.val + carry
#         newCarry = newVal >= 10 ? 1 : 0
#         newNode = ListNode.new(newVal % 10)
#         newNode.next = add_two_nums_with_carry(l1.next, nil, newCarry)
#     else
#         newVal = (l1.val + l2.val + carry)
#         newCarry = newVal >= 10 ? 1 : 0
#         modVal = newVal % 10
#         newNode = ListNode.new(modVal)
#         newNode.next = add_two_nums_with_carry(l1.next, l2.next, newCarry)
#     end
#     newNode || nil
# end