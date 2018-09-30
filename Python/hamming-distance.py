class Solution:
    def hammingDistance(self, x, y):
        """
        :type x: int
        :type y: int
        :rtype: int
        """
        z = x ^ y
        res = 0

        while z > 0:
            res = res + 1 if z & 1 == 1 else res
            z = z >> 1

        return res
