class Solution:
    def countPrimeSetBits(self, L, R):
        """
        :type L: int
        :type R: int
        :rtype: int
        """
        primes = set([2, 3, 5, 7, 11, 13, 17, 19])
        return sum(self.bitCount(i) in primes
                    for i in range(L, R + 1))
        
    def bitCount(self, n):
        count = 0

        while n:
            n &= n - 1
            count += 1

        return count
