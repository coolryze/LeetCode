class Solution:
    def longestWord(self, words):
        """
        :type words: List[str]
        :rtype: str
        """
        words.sort()
        s = set([''])
        res = ''

        for word in words:
            if word[:-1] in s:
                s.add(word)
                if len(word) > len(res):
                    res = word

        return res
