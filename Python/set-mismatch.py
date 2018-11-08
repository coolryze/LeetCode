class Solution:
    def findErrorNums(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        numsSum = sum(list(range(1, len(nums) + 1)))
        numsSet = set()
        res = list()

        for num in nums:
            if num in numsSet:
                res.append(num)
            else:
                numsSet.add(num)
                numsSum -= num
        res.append(numsSum)

        return res
