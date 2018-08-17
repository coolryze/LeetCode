class Solution:
    def containsDuplicate1(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        d = dict()

        for index, value in enumerate(nums):
            if value in d:
                return True
            d[value] = index

        return False

    def containsDuplicate2(self, nums):
        """
        :type nums: List[int]
        :rtype: bool
        """
        return len(nums) > len(set(nums))
