class Solution:
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        if not strs:
            return ''

        firstStr = strs[0]

        for i in range(len(firstStr)):
            for str in strs[1:]:
                if i >= len(str) or str[i] != firstStr[i]:
                    return firstStr[:i]
        return firstStr
