class Solution:
    def containsNearbyDuplicate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: bool
        """
        d = dict()

        for index, value in enumerate(nums):
            if value in d and index - d[value] <= k:
                return True
            d[value] = index

        return False
