class Solution:
    def moveZeroes1(self, nums):
        """
        :type nums: List[int]
        :rtype: void Do not return anything, modify nums in-place instead.
        """
        indexArray = list()

        for index, num in enumerate(nums):
            if num == 0:
                indexArray.append(index)

        zeroCount = len(indexArray)
        if zeroCount <= 0:
            return

        for _ in range(zeroCount):
            index = indexArray.pop()
            nums.pop(index)
            nums.append(0)

    def moveZeroes2(self, nums):
        """
        :type nums: List[int]
        :rtype: void Do not return anything, modify nums in-place instead.
        """
        index = 0

        for num in nums:
            if num != 0:
                nums[index] = num
                index += 1

        while index < len(nums):
            nums[index] = 0
            index += 1
