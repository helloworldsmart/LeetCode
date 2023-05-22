/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var current: ListNode? = dummy
        var p1 = list1
        var p2 = list2
        
        while let node1 = p1, let node2 = p2 {
            if node1.val < node2.val {
                current?.next = node1
                p1 = node1.next
            } else {
                current?.next = node2
                p2 = node2.next
            }
            current = current?.next
        }
        
        if let remainingNodes = p1 {
            current?.next = remainingNodes
        }
        if let remainingNodes = p2 {
            current?.next = remainingNodes
        }
        
        return dummy.next
    }
}