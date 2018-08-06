class Solution:
    def titleToNumber(self, s):
        """
        :type s: str
        :rtype: int
        """
        res = 0
        valueA = ord('A')

        for c in s:
            res = res * 26 + ord(c) - valueA + 1

        return res
