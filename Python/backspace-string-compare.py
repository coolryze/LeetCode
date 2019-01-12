import itertools

class Solution:
    def backspaceCompare(self, S, T):
        """
        :type S: str
        :type T: str
        :rtype: bool
        """
        return all(x == y for x, y in
                   itertools.zip_longest(self.getResultString(S), self.getResultString(T)))

    def getResultString(self, S):
        skip = 0
        for i in reversed(range(len(S))):
            if S[i] == '#':
                skip += 1
            elif skip:
                skip -= 1
            else:
                yield S[i]
