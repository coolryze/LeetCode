class Solution:
    def dominantIndex(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        maxNum = max(nums)

        for num in nums:
            if maxNum != num and maxNum < num * 2:
                return -1

        return nums.index(maxNum)
