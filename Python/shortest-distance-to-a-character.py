class Solution:
    def shortestToChar(self, S, C):
        """
        :type S: str
        :type C: str
        :rtype: List[int]
        """
        length = len(S)
        res, currentPosition = [0] * length, -length

        for i in range(length):
            if S[i] == C:
                currentPosition = i
            res[i] = i - currentPosition

        for i in range(length - 1, -1, -1):
            if S[i] == C:
                currentPosition = i
            res[i] = min(res[i], abs(currentPosition - i))

        return res
