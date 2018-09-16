class Solution:
    def longestPalindrome(self, s):
        """
        :type s: str
        :rtype: int
        """
        d = dict()
        res = 0

        for char in s:
            if char in d:
                if d[char] == 1:
                    d[char] = 0
                    res += 2
                else:
                    d[char] = d[char] + 1
            else:
                d[char] = 1

        for value in d.values():
            if value > 0:
                res += 1
                break
        
        return res
