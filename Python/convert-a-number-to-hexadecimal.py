class Solution:
    def toHex(self, num):
        """
        :type num: int
        :rtype: str
        """
        if num == 0:
            return '0'

        m = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f']
        res = ''
        i = 0

        while num != 0 and i < 8:
            res = m[num & 0b1111] + res
            num >>= 4
            i += 1

        return res
