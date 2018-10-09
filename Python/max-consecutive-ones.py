class Solution:
    def findMaxConsecutiveOnes(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        res = 0
        i = 0
        for num in nums:
            i = (i + 1 if num else 0)
            res = max(res, i)
        return res
