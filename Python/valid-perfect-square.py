class Solution:
    def isPerfectSquare1(self, num):
        """
        :type num: int
        :rtype: bool
        """
        x = 0

        while x * x != num:
            if x * x > num:
                return False
            else:
                x += 1

        return True

    def isPerfectSquare2(self, num):
        """
        :type num: int
        :rtype: bool
        """
        left = 0
        right = num

        while left <= right:
            mid = left + (right - left) // 2
            if mid * mid >= num:
                right = mid - 1
            else:
                left = mid + 1

        return left * left == num

    def isPerfectSquare3(self, num):
        """
        :type num: int
        :rtype: bool
        """
        i = 1

        while num > 0:
            num -= i
            i += 2

        return num == 0
