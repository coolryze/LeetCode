class Solution:
    def minDeletionSize(self, A):
        """
        :type A: List[str]
        :rtype: int
        """
        res = 0

        for c in range(len(A[0])):
            for r in range(1, len(A)):
                if A[r-1][c] > A[r][c]:
                    res += 1
                    break

        return res
