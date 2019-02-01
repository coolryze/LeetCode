class Solution:
    def numSpecialEquivGroups(self, A):
        """
        :type A: List[str]
        :rtype: int
        """
        return len({ self.count(word) for word in A })

    def count(self, word):
        res = [0]*52

        for i, letter in enumerate(word):
            res[ord(letter)-ord('a') + 26*(i%2)] += 1

        return tuple(res)
