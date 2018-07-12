class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        d = dict()

        for i in range(len(nums)):
            if (target - nums[i]) in d:
                return [d[target - nums[i]], i]
            d[nums[i]] = i
