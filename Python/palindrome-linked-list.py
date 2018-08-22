# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def isPalindrome(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        if not head:
            return True

        fast = head
        slow = head
        prev = None
        post = slow.next

        while fast and fast.next:
            fast = fast.next.next

            slow.next = prev
            prev = slow
            slow = post
            post = post.next

        if fast:
            slow = post

        while prev:
            if prev.val != slow.val:
                return False
            prev = prev.next
            slow = slow.next

        return True
