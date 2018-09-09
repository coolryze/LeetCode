class Solution:
    def canConstruct1(self, ransomNote, magazine):
        """
        :type ransomNote: str
        :type magazine: str
        :rtype: bool
        """
        if len(ransomNote) > len(magazine):
            return False

        d = dict()

        for char in magazine:
            if char in d:
                d[char] = d[char] + 1
            else:
                d[char] = 1

        for char in ransomNote:
            if char in d and d[char] > 0:
                d[char] = d[char] - 1
            else:
                return False

        return True

    def canConstruct2(self, ransomNote, magazine):
        """
        :type ransomNote: str
        :type magazine: str
        :rtype: bool
        """
        if len(ransomNote) > len(magazine):
            return False

        for char in ransomNote:
            if char in magazine:
                magazine = magazine.replace(char, '', 1)
            else:
                return False

        return True
