class Solution:
    def getSum(self, a, b):
        """
        :type a: int
        :type b: int
        :rtype: int
        """
        mask = 0xFFFFFFFF
        maximum = 0x7FFFFFFF

        while b != 0:
            temp  = (a ^ b) & mask
            b = ((a & b) << 1) & mask
            a = temp

        return a if a <= maximum else ~(a ^ mask)
