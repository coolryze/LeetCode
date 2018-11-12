class Solution:
    def findLengthOfLCIS(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        result = 0
        count = 0

        for i in range(len(nums)):
            if i == 0 or nums[i-1] < nums[i]:
                count += 1
                result = max(count, result)
            else:
                count = 1

        return result
