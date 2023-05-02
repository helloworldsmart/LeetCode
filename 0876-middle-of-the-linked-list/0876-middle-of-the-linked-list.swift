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
    func middleNode(_ head: ListNode?) -> ListNode? {

        var fast: ListNode? = head
        var slow: ListNode? = head

        while fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        return slow
    }
}

// class Solution {
//     func middleNode(_ head: ListNode?) -> ListNode? {
        
//         var slow: ListNode? = head
//         var fast: ListNode? = head
        
//         while fast?.next != nil{
            
//             slow = slow?.next
//             fast = fast?.next?.next
//         }
        
//         return slow 
//     }
// }