/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var pA = headA
        var pB = headB
        
        while pA !== pB {
            if pA == nil {
                pA = headB
            } else {
                pA = pA?.next
            }
            
            if pB == nil {
                pB = headA
            } else {
                pB = pB?.next
            }
        }
        return pA
    }
}