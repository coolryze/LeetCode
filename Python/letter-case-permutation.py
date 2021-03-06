class Solution:
    def letterCasePermutation(self, S):
        """
        :type S: str
        :rtype: List[str]
        """
        res = [[]]

        for c in S:
            if c.isalpha():
                for i in range(len(res)):
                    res.append(res[i][:])
                    res[i].append(c.lower())
                    res[-1].append(c.upper())
            else:
                for s in res:
                    s.append(c)

        return map("".join, res)
