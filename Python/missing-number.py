class Solution:
    def missingNumber1(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        s = set()

        for num in nums:
            s.add(num)

        for i in range(len(nums) + 1):
            if not i in s:
                return i

        raise IOError("no valid outputs")

    def missingNumber2(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        return sum(range(len(nums) + 1)) - sum(nums)
