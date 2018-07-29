class Solution:
    def merge1(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: void Do not return anything, modify nums1 in-place instead.
        """
        if m <= 0:
            nums1[:] = nums2[:]
            return

        current = 0

        for i in range(n):
            for j in range(current, m):
                if nums2[i] >= nums1[m - 1]:
                    nums1[m] = nums2[i]
                    m += 1
                    break
                if nums2[i] <= nums1[j]:
                    nums1.insert(j, nums2[i])
                    current = j + 1
                    m += 1
                    break
        
        nums1[:] = nums1[:m]
        
    def merge2(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: void Do not return anything, modify nums1 in-place instead.
        """
        i = m - 1
        j = n - 1

        while i >= 0 or j >= 0:
            if j < 0 or (i >= 0 and nums1[i] > nums2[j]):
                nums1[i + j + 1] = nums1[i]
                i -= 1
            else:
                nums1[i + j + 1] = nums2[j]
                j -= 1
