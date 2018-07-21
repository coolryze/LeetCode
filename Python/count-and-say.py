class Solution:
    def countAndSay(self, n):
        """
        :type n: int
        :rtype: str
        """
        if n <= 0:
            return ""

        res = "1"

        for _ in range(1, n):
            temp = ""
            count = 1
            chars = list(res)
            current = chars[0]

            for i in range(1, len(chars)):
                if chars[i] == current:
                    count += 1
                else:
                    temp += str(count)
                    temp += current
                    count = 1
                    current = chars[i]

            temp += str(count)
            temp += current
            res = temp

        return res
