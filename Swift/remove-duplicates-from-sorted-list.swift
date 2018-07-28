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
    func deleteDuplicates1(_ head: ListNode?) -> ListNode? {
        var p = head
        var q = p?.next
        
        while p?.next != nil {
            if p?.val != q?.val {
                p?.next = q
                p = p?.next
            }
            q = q?.next
        }
        
        return head
    }
    
    func deleteDuplicates2(_ head: ListNode?) -> ListNode? {
        var p = head
        
        while p?.next != nil {
            if p?.val == p?.next?.val {
                p?.next = p?.next?.next
            } else {
                p = p?.next
            }
        }
        
        return head
    }
}
