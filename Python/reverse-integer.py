import sys

class Solution:
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        if x < 0:
            return -self.reverse(-x)

        res = 0
        while x:
            res = res * 10 + x % 10
            x //= 10
        return res if res <= 0x7fffffff else 0
