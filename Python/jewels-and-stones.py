class Solution:
    def numJewelsInStones(self, J, S):
        """
        :type J: str
        :type S: str
        :rtype: int
        """
        setJ = set(J)
        res = 0

        for c in S:
            if c in setJ:
                res += 1

        return res
