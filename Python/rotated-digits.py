class Solution:
    def rotatedDigits(self, N):
        """
        :type N: int
        :rtype: int
        """
        invalid = set(['3', '4', '7'])
        diff = set(['2', '5', '6', '9'])
        result = 0

        for i in range(N+1):
            lookup = set(list(str(i)))
            if lookup & invalid:
                continue
            if lookup & diff:
                result += 1

        return result
