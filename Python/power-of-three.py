import math

class Solution:
    def isPowerOfThree1(self, n):
        """
        :type n: int
        :rtype: bool
        """
        x = 1

        while x != n:
            if x < n:
                x *= 3
            else:
                return False

        return True

    def isPowerOfThree2(self, n):
        """
        :type n: int
        :rtype: bool
        """
        maxPow3 = 3 ** int(math.log(0x7fffffff) / math.log(3))
        return n > 0 and maxPow3 % n == 0
