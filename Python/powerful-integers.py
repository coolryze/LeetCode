import math

class Solution:
    def powerfulIntegers(self, x, y, bound):
        """
        :type x: int
        :type y: int
        :type bound: int
        :rtype: List[int]
        """
        res = set()
        logX = int(math.floor(math.log(bound) / math.log(x))) + 1 if x != 1 else 1
        logY = int(math.floor(math.log(bound) / math.log(y))) + 1 if y != 1 else 1
        powX = 1

        for _ in range(logX):
            powY = 1
            for _ in range(logY):
                val = powX + powY
                if val <= bound:
                    res.add(val)
                powY *= y
            powX *= x

        return list(res)
