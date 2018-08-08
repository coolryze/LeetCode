class Solution:
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: void Do not return anything, modify nums in-place instead.
        """
        k %= len(nums)
        self.reverse(nums, 0, len(nums) - 1)
        self.reverse(nums, 0, k - 1)
        self.reverse(nums, k, len(nums) - 1)

    def reverse(self, nums, start, end):
        if start < 0 or end > len(nums) or start > end:
            return

        while start < end:
            nums[start], nums[end] = nums[end], nums[start]
            start += 1
            end -= 1
