class Solution:
    def findTheDifference(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: str
        """
        s = list(s)
        t = list(t)

        for char in s:
            if char in t:
                t.remove(char)

        return t[0]