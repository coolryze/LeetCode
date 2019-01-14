class Solution:
    def maxDistToClosest(self, seats):
        """
        :type seats: List[int]
        :rtype: int
        """
        prev, res = -1, 1

        for i in range(len(seats)):
            if seats[i]:
                if prev < 0:
                    res = i
                else:
                    res = max(res, (i - prev) // 2)
                prev = i

        return max(res, len(seats) - 1 - prev)
