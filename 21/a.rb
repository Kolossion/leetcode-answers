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
def merge_two_lists(l1, l2)
    l1cur = l1
    l2cur = l2
    newList = ListNode.new(0)
    newListCursor = newList
    
    while !(l1cur.nil? && l2cur.nil?) do
        x = if l1cur.nil? then +1.0/0 else l1cur.val end
        y = if l2cur.nil? then +1.0/0 else l2cur.val end
        if (x <= y) then
            newListCursor.next = ListNode.new(l1cur.val)    
            l1cur = l1cur.next
        else
            newListCursor.next = ListNode.new(l2cur.val)
            l2cur = l2cur.next
        end
        newListCursor = newListCursor.next
    end
    newList.next
end