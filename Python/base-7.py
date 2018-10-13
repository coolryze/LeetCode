class Solution:
    def convertToBase7(self, num):
        """
        :type num: int
        :rtype: str
        """
        if num < 0:
            return '-' + self.convertToBase7(-num)

        res = ''
        while num >= 7:
            res = str(num % 7) + res
            num //= 7
        res = str(num) + res

        return res
