class Solution:
    def largestPalindrome(self, n):
        """
        :type n: int
        :rtype: int
        """
        upper = pow(10, n) - 1

        for i in range(upper):
            i = upper - i
            if i <= upper / 10:
                break
            palindrome = int(str(i) + str(i)[::-1])

            for j in range(upper):
                j = upper - j
                if j <= upper / 10 or palindrome / j > upper:
                    break
                if palindrome % j == 0:
                    return palindrome % 1337

        return 9
