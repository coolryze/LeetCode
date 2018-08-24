from collections import defaultdict

class Solution:
    def isAnagram1(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        if len(s) != len(t):
            return False

        d = defaultdict(int)

        for char in s:
            d[char] += 1

        for char in t:
            d[char] -= 1
            if d[char] < 0:
                return False

        return True

    def isAnagram2(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        return sorted(s) == sorted(t)
