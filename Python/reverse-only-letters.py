class Solution:
    def reverseOnlyLetters(self, S):
        """
        :type S: str
        :rtype: str
        """
        def LetterGenerator(S):
            for i in reversed(range(len(S))):
                if S[i].isalpha():
                    yield S[i]

        result = []
        letterGenerator = LetterGenerator(S)

        for i in range(len(S)):
            if S[i].isalpha():
                result.append(next(letterGenerator))
            else:
                result.append(S[i])
        return "".join(result)
