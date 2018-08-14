class Solution:
    def countPrimes(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n <= 2:
            return 0
        isPrime = [True] * n

        for i in range(2, n):
            if i * i >= n:
                break
            if isPrime[i]:
                for j in range(i * i, n, i):
                    isPrime[j] = False

        count = 1
        for i in range(3, n, 2):
            count += 1 if isPrime[i] else 0
        return count
