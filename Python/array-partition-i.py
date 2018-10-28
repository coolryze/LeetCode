class Solution:
    def arrayPairSum1(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        nums.sort()
        res = 0
        for i in range(0, len(nums), 2):
            res += nums[i]
        return res

    def arrayPairSum2(self, nums):
        nums.sort()
        return sum([nums[i] for i in range(0, len(nums), 2)])
