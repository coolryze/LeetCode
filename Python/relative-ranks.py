class Solution:
    def findRelativeRanks(self, nums):
        """
        :type nums: List[int]
        :rtype: List[str]
        """
        sortedNums = sorted(nums)[::-1]
        ranks = ['Gold Medal', 'Silver Medal', 'Bronze Medal']
        ranks = ranks + list(map(str, range(4, len(nums) + 1))) if len(nums) > 3 else ranks
        return list(map(dict(zip(sortedNums, ranks)).get, nums))
