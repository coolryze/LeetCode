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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var p = head
        var q: ListNode?

        while p != nil {
            let temp = p?.next
            p?.next = q
            q = p
            p = temp
        }

        return q
    }
}
