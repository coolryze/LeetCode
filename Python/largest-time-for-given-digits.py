import itertools

class Solution:
    def largestTimeFromDigits(self, A):
        """
        :type A: List[int]
        :rtype: str
        """
        res = ""

        for i in range(len(A)):
            A[i] *= -1
        A.sort()

        for h1, h2, m1, m2 in itertools.permutations(A):
            hours = -(10 * h1 + h2)
            mins = -(10 * m1 + m2)
            if 0 <= hours < 24 and 0 <= mins < 60:
                res = "{:02}:{:02}".format(hours, mins)
                break

        return res
