class Solution:
    def isIsomorphic(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        if len(s) != len(t):
            return False

        stDict = dict()
        tsDict = dict()
        sChars = list(s)
        tChars = list(t)

        for i in range(len(s)):
            sCurrent = sChars[i]
            tCurrent = tChars[i]

            if (sCurrent not in stDict) and (tCurrent not in tsDict):
                stDict[sCurrent] = tCurrent
                tsDict[tCurrent] = sCurrent
            elif stDict[sCurrent] != tCurrent or tsDict[tCurrent] != sCurrent:
                return False

        return True
