class Solution:
    def reverseVowels(self, s):
        """
        :type s: str
        :rtype: str
        """
        strList = list(s)
        vowelsSet = set(['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'])
        left = 0
        right = len(s) - 1

        while left < right:
            charLeft = strList[left]
            charRight = strList[right]
            if charLeft in vowelsSet and charRight in vowelsSet:
                strList[left] = charRight
                strList[right] = charLeft
                left += 1
                right -= 1
            elif charLeft in vowelsSet:
                right -= 1
            elif charRight in vowelsSet:
                left += 1
            else:
                left += 1
                right -= 1

        return ''.join(strList)
