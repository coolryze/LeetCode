class Solution:
    def trailingZeroes(self, n):
        """
        :type n: int
        :rtype: int
        """
        res = 0

        while n > 0:
            res += n // 5
            n //= 5

        return res
