class Solution:
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        index = len(digits) - 1

        while index >= 0:
            if digits[index] < 9:
                digits[index] += 1
                return digits
            digits[index] = 0
            index -= 1

        digits.insert(0, 1)
        return digits
