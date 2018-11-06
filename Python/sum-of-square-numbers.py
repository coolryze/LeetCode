import math

class Solution:
    def judgeSquareSum(self, c):
        """
        :type c: int
        :rtype: bool
        """
        for a in range(int(math.sqrt(c)) + 1):
            b = int(math.sqrt(c - a**2))
            if a**2 + b**2 == c:
                return True

        return False
