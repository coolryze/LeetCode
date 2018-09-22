class Solution:
    def arrangeCoins(self, n):
        """
        :type n: int
        :rtype: int
        """
        left, right = 1, n
        while left <= right:
            mid = left + (right - left) // 2
            if 2 * n < mid * (mid+1):
                right = mid - 1
            else:
                left = mid + 1
        return left - 1
