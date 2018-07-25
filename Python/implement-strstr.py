class Solution:
    def strStr1(self, haystack, needle):
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """
        hLen = len(haystack)
        nLen = len(needle)
        
        if nLen == 0:
            return 0
        if hLen < nLen:
            return -1

        for i in range(hLen - nLen + 1):
            if haystack[i:i+nLen] == needle:
                return i
        return -1

    def strStr2(self, haystack, needle):
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """
        return haystack.find(needle)
