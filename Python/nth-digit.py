class Solution:
    def findNthDigit(self, n):
        """
        :type n: int
        :rtype: int
        """
        length = 1
        x = 9

        while n > length * x:
            n -= length * x
            length += 1
            x *= 10

        indexAtNums = (n - 1) // length
        indexAtNum = (n - 1) % length
        num = 10 ** (length - 1 ) + indexAtNums
        res = num // (10 ** (length - 1 - indexAtNum))
        res %= 10

        return res
