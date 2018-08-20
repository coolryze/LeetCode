class Solution:
    def isPowerOfTwo1(self, n):
        """
        :type n: int
        :rtype: bool
        """
        x = 1

        while x != n:
            if x < n:
                x <<= 1
            else:
                return False

        return True

    def isPowerOfTwo2(self, n):
        """
        :type n: int
        :rtype: bool
        """
        return (n > 0) and (n & (n - 1) == 0)
