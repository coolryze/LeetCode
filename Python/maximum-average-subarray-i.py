class Solution:
    def findMaxAverage(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: float
        """
        currentSum = 0
        maxSum = 0

        for i in range(k):
            currentSum += nums[i]
        maxSum = currentSum

        for i in range(k, len(nums)):
            currentSum -= nums[i - k]
            currentSum += nums[i]
            maxSum = max(currentSum, maxSum)

        return maxSum / k
