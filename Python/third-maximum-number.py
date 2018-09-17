class Solution:
    def thirdMax(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        firstMax = float("-inf")
        secondMax = float("-inf")
        thirdMax = float("-inf")
        count = 0

        for num in nums:
            if num > firstMax:
                thirdMax, secondMax, firstMax = secondMax, firstMax, num
                count += 1
            elif num != firstMax and num > secondMax:
                thirdMax, secondMax = secondMax, num
                count += 1
            elif num != firstMax and num != secondMax and num > thirdMax:
                thirdMax = num
                count += 1

        if count < 3:
            return firstMax

        return thirdMax
