class Solution:
    def climbStairs1(self, n):
        """
        :type n: int
        :rtype: int
        """
        prev, current = 0, 1
        
        for _ in range(n):
            prev, current = current, prev + current,
        return current

    def climbStairs2(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n == 1:
            return 1
        if n == 2:
            return 2
        return self.climbStairs2(n - 1) + self.climbStairs2(n - 2)
