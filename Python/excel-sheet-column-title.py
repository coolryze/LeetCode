class Solution:
    def convertToTitle(self, n):
        """
        :type n: int
        :rtype: str
        """
        res = ''
        
        while n:
            res = chr((n - 1) % 26 + ord('A')) + res
            n = (n - 1) // 26

        return res
