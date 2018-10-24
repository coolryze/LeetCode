class Solution:
    def reverseWords(self, s):
        """
        :type s: str
        :rtype: str
        """
        words = s.split(' ')
        res = ''

        for i, word in enumerate(words):
            res += word[::-1]
            if i != len(words) - 1:
                res += ' '

        return res
