class Solution:
    def numberOfLines(self, widths, S):
        """
        :type widths: List[int]
        :type S: str
        :rtype: List[int]
        """
        maxCount = 100
        line = 1
        count = 0

        for c in S:
            value = widths[ord(c) - ord('a')]
            if count + value <= maxCount:
                count += value
            else:
                line += 1
                count = 0
                count += value

        return [line, count]
