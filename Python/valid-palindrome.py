class Solution:
    def isPalindrome(self, s):
        """
        :type s: str
        :rtype: bool
        """
        charArr = list(filter(str.isalnum, s.lower()))
        length = len(charArr)

        for i in range(0, length // 2):
            if charArr[i] != charArr[length - 1 - i]:
                return False

        return True
