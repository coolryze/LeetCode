import math

class Solution:
    def constructRectangle(self, area):
        """
        :type area: int
        :rtype: List[int]
        """
        w = int(math.sqrt(area))
        while area % w:
            w -= 1
        return [area // w, w]
