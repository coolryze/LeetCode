class Solution:
    def compress(self, chars):
        """
        :type chars: List[str]
        :rtype: int
        """
        index = 0
        currentCount = 0

        for i in range(0, len(chars)):
            currentCount += 1

            if i + 1 == len(chars) or chars[i] != chars[i + 1]:
                chars[index] = chars[i]

                if currentCount != 1:
                    chars[index + 1: index + len(str(currentCount)) + 1] = list(str(currentCount))

                index += (1 if currentCount == 1 else len(str(currentCount)) + 1)
                currentCount = 0

        return index
