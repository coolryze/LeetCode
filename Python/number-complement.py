class Solution:
    def findComplement(self, num):
        """
        :type num: int
        :rtype: int
        """
        res = 0
        offset = 0

        while num > 0:
            res += ((num & 1) ^ 1) << offset
            num >>= 1
            offset += 1

        return res
