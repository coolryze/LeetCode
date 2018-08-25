class Solution:
    def addDigits1(self, num):
        """
        :type num: int
        :rtype: int
        """
        while num >= 10:
            x = 0
            while num > 0:
                x += num % 10
                num //= 10
            num = x

        return num

    def addDigits2(self, num):
        """
        :type num: int
        :rtype: int
        """
        return (num - 1) % 9 + 1 if num > 0 else 0
