class Solution:
    def checkRecord(self, s):
        """
        :type s: str
        :rtype: bool
        """
        countA = 0

        for i in range(len(s)):
            if s[i] == 'A':
                countA += 1
                if countA == 2:
                    return False
            if i < len(s) - 2 and s[i] == s[i+1] == s[i+2] == 'L':
                return False

        return True
