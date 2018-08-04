class Solution:
    def twoSum(self, numbers, target):
        """
        :type numbers: List[int]
        :type target: int
        :rtype: List[int]
        """
        d = dict()

        for i, num in enumerate(numbers):
            if (target - num) in d:
                return [d[target - num], i + 1]
            d[num] = i + 1
