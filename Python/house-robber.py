class Solution:
    def rob(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        res = 0
        prev = 0

        for num in nums:
            res, prev = max(prev + num, res), res

        return res
