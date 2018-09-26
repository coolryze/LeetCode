class Solution:
    def findDisappearedNumbers(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        for i in range(len(nums)):
            if nums[abs(nums[i]) - 1] > 0:
                nums[abs(nums[i]) - 1] *= -1

        res = list()

        for i in range(len(nums)):
            if nums[i] > 0:
                res.append(i + 1)
            else:
                nums[i] *= -1

        return res
