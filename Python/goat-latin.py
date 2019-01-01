class Solution:
    def toGoatLatin(self, S):
        """
        :type S: str
        :rtype: str
        """
        vowelSet = set(['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'])
        charsArr = list(map((lambda word: list(word)), S.split()))
        ma = ['m', 'a']
        a = 'a'

        for i, chars in enumerate(charsArr):
            if chars[0] not in vowelSet:
                firstChar = chars.pop(0)
                chars.append(firstChar)
            chars.extend(ma)
            chars.extend(a * (i+1))

        return ' '.join(list(map((lambda chars: ''.join(chars)), charsArr)))
