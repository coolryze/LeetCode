class Solution:
    def findContentChildren(self, g, s):
        """
        :type g: List[int]
        :type s: List[int]
        :rtype: int
        """
        s.sort()
        g.sort()
        res = 0
        i = 0

        for j in range(len(s)):
            if i == len(g):
                break
            if s[j] >= g[i]:
                res += 1
                i += 1

        return res
