class Solution:
    def maxSubArray1(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        maxCureent = nums[0]
        maxGlobal = nums[0]

        for i in range(1, len(nums)):
            maxCureent = max(maxCureent + nums[i], nums[i])
            maxGlobal = max(maxCureent, maxGlobal)
        return maxGlobal
