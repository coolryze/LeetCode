class Solution:
    def firstUniqChar(self, s):
        """
        :type s: str
        :rtype: int
        """
        d = dict()

        for char in s:
            if char in d:
                d[char] = False
            else:
                d[char] = True

        for i, char in enumerate(s):
            if d[char]:
                return i

        return -1
