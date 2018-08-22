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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {
            return true
        }

        var fast = head
        var slow = head
        var prev: ListNode?
        var post = slow!.next

        while fast != nil && fast!.next != nil  {
            fast = fast!.next!.next

            slow!.next = prev
            prev = slow
            slow = post
            post = post!.next
        }

        if fast != nil {
            slow = post
        }

        while prev != nil {
            if prev!.val != slow!.val {
                return false
            }
            prev = prev!.next
            slow = slow!.next
        }

        return true
    }
}
