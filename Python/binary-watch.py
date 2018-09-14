class Solution:
    def readBinaryWatch(self, num):
        """
        :type num: int
        :rtype: List[str]
        """
        res = list()

        def bitCount(num):
            count = 0
            while num:
                count += num & 1
                num >>= 1
            return count

        for h in range(12):
            for m in range(60):
                if bitCount(h) + bitCount(m) == num:
                    res.append('%d:%02d' % (h, m))

        return res
