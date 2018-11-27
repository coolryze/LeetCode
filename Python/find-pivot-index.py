class Solution:
    def pivotIndex(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        totalSum = sum(nums)
        leftSum = 0

        for i, num in enumerate(nums):
            if leftSum == totalSum - leftSum - num:
                return i
            leftSum += num

        return -1
