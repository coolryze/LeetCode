class Solution:
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        length = len(nums)
        if length <= 1:
            return length

        i = 0
        for j in range(1, length):
            if nums[i] != nums[j]:
                i += 1
                nums[i] = nums[j]
        return i + 1
