class Solution:
    def isHappy(self, n):
        """
        :type n: int
        :rtype: bool
        """
        s = set()

        while n != 1:
            if n in s:
                return False
            s.add(n)

            temp = 0
            while n > 0:
                temp += pow(n % 10, 2)
                n //= 10
            n = temp

        return True
