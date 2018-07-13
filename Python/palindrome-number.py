class Solution:
    def isPalindrome1(self, x):
        """
        :type x: int
        :rtype: bool
        """
        def reverse(x):
            res = 0
            while x:
                res = res * 10 + x % 10
                x //= 10
            return res

        if x < 0 or x != reverse(x):
            return False
        return True

    def isPalindrome2(self, x):
        """
        :type x: int
        :rtype: bool
        """
        if x < 0:
            return False
        return x == int(str(x)[::-1])
