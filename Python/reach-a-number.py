class Solution:
    def reachNumber(self, target):
        """
        :type target: int
        :rtype: int
        """
        if target < 0:
            return self.reachNumber(-target)

        i = 0

        while i * (i + 1) < target * 2:
            i += 1

        if i * (i + 1) // 2 == target:
            return i
        else:
            if (i * (i + 1) // 2 - target) % 2 == 0:
                return i
            else:
                if i % 2 == 0:
                    return i + 1
                else:
                    return i + 2
