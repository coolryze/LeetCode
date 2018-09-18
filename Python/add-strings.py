class Solution:
    def addStrings(self, num1, num2):
        """
        :type num1: str
        :type num2: str
        :rtype: str
        """
        chars1 = list(num1)
        chars2 = list(num2)
        chars1.reverse()
        chars2.reverse()
        i, j, sumValue, carry = 0, 0, 0, 0
        res = list()

        while i < len(chars1) or j < len(chars2) or carry != 0:
            sumValue = carry

            if i < len(chars1):
                sumValue += int(chars1[i])
                i += 1
            if j < len(chars2):
                sumValue += int(chars2[j])
                j += 1

            carry = sumValue // 10
            sumValue = sumValue % 10

            res.append(str(sumValue))
        
        res.reverse()
        return ''.join(res)
