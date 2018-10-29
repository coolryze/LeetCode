
class Solution:
    def findUnsortedSubarray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if len(nums) < 2:
            return 0

        sortedNums = sorted(nums)
        p = -1
        q = -1
        
        for i in range(len(nums)):
            if nums[i] != sortedNums[i]:
                if p == -1:
                    p = i
                else:
                    q = i + 1
        return q - p
