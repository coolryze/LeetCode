class Solution:
    def isUgly1(self, num):
        """
        :type num: int
        :rtype: bool
        """
        if num <= 0:
            return False

        while num != 1:
            if num % 2 == 0:
                num //= 2
            elif num % 3 == 0:
                num //= 3
            elif num % 5 == 0:
                num //= 5
            else:
                return False

        return True

    def isUgly2(self, num):
        """
        :type num: int
        :rtype: bool
        """
        if num <= 0:
            return False

        for i in [2, 3, 5]:
            while num % i == 0:
                num //= i

        return num == 1
