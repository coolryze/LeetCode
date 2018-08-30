class Solution:
    def wordPattern(self, pattern, str):
        """
        :type pattern: str
        :type str: str
        :rtype: bool
        """
        chars = list(pattern)
        words = str.split(' ')

        if len(chars) != len(words):
            return False

        d = dict()

        for index, char in enumerate(chars):
            currentWord = words[index]
            if char in d:
                if d[char] != currentWord:
                    return False
            else:
                if currentWord in d.values():
                    return False
                else:
                    d[char] = currentWord

        return True
