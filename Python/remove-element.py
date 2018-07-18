class Solution:
    def removeElement(self, nums, val):
        """
        :type nums: List[int]
        :type val: int
        :rtype: int
        """
        i = 0
        last = len(nums) - 1

        while i <= last:
            if nums[i] == val:
                nums[i] = nums[i] ^ nums[last]
                nums[last] = nums[i] ^ nums[last]
                nums[i] = nums[i] ^ nums[last]
                last -= 1
            else:
                i += 1
        return i
