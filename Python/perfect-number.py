class Solution:
    def checkPerfectNumber(self, num):
        """
        :type num: int
        :rtype: bool
        """
        if num <= 1:
            return False

        res = 1
        i = 2
        s = num ** 0.5

        while i <= s:
            if num % i == 0:
                res += (i + num // i)
            i += 1

        return res == num
