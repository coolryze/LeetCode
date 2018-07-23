class Solution:
    def lengthOfLastWord1(self, s):
        """
        :type s: str
        :rtype: int
        """
        res = 0
        
        for i in reversed(s):
            if i == " ":
                if res:
                    break
            else:
                res += 1
        return res

    def lengthOfLastWord2(self, s):
        """
        :type s: str
        :rtype: int
        """
        return len(s.strip().split(" ")[-1])
