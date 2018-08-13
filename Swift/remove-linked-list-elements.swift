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
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let p = ListNode(0)
        p.next = head
        var q = p

        while q.next != nil {
            if q.next!.val == val {
                q.next = q.next!.next
            } else {
                q = q.next!
            }
        }

        return p.next
    }
}
