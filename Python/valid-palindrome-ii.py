class Solution:
    def validPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        left = 0
        right = len(s)-1

        while left < right:
            if s[left] != s[right]:
                return self.isPalindrome(s, left, right-1) or self.isPalindrome(s, left+1, right)
            else:
                left += 1
                right -= 1

        return True

    def isPalindrome(self, s, left, right):
        while left < right:
            if s[left] != s[right]:
                return False
            else:
                left += 1
                right -= 1

        return True
