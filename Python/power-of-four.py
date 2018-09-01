class Solution:
    def isPowerOfFour1(self, num):
        """
        :type num: int
        :rtype: bool
        """
        x = 1

        while x != num:
            if x < num:
                x <<= 2
            else:
                return False

        return True
        
    def isPowerOfFour2(self, num):
        """
        :type num: int
        :rtype: bool
        """
        return num > 0 and (num & (num - 1)) == 0 and (num & 0b01010101010101010101010101010101) == num
