class Solution:
    def findWords(self, words):
        """
        :type words: List[str]
        :rtype: List[str]
        """
        res = []
        rows = ['qwertyuiop', 'asdfghjkl', 'zxcvbnm']

        for word in words:
            for row in rows:
                if all(letter in row for letter in word.lower()):
                    res.append(word)

        return res
