class Solution:
    def nextGreaterElement(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: List[int]
        """
        res = []

        for num in nums1:
            index = nums2.index(num)
            if index < len(nums2):
                value = -1
                for i in range(index + 1, len(nums2)):
                    if num < nums2[i]:
                        value = nums2[i]
                        break
                res.append(value)
            else:
                res.append(-1)

        return res        
