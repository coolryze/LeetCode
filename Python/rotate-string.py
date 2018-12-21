class Solution:
    def rotateString(self, A, B):
        """
        :type A: str
        :type B: str
        :rtype: bool
        """
        if len(A) != len(B):
            return False

        if A == B:
            return True
        
        a = list(A)
        b = list(B)

        for _ in range(len(a)-1):
            a.append(a.pop(0))
            if a == b:
                return True

        return False
