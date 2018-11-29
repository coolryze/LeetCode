class Solution:
    def selfDividingNumbers(self, left, right):
        """
        :type left: int
        :type right: int
        :rtype: List[int]
        """
        res = []

        for i in range(left, right + 1):
            if i % 10 != 0 and self.isSelfDividingNumber(i):
                res.append(i)

        return res

    def isSelfDividingNumber(self, num):
        n = num

        while n > 0:
            if n % 10 != 0 and num % (n % 10) == 0:
                n //= 10
            else:
                return False

        return True
