class Solution:
    def diStringMatch(self, S):
        """
        :type S: str
        :rtype: List[int]
        """
        res = []
        left, right = 0, len(S)

        for c in S:
            if c == 'I':
                res.append(left)
                left += 1
            else:
                res.append(right)
                right -= 1
        res.append(left)

        return res
