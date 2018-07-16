class Solution:
    def isValid1(self, s):
        """
        :type s: str
        :rtype: bool
        """
        stack = list()

        for c in s:
            if c == "(" or c == "[" or c == "{":
                stack.append(c)
            elif c == ")":
                if len(stack) == 0 or stack.pop() != "(":
                    return False
            elif c == "]":
                if len(stack) == 0 or stack.pop() != "[":
                    return False
            elif c == "}":
                if len(stack) == 0 or stack.pop() != "{":
                    return False
        return len(stack) == 0

    def isValid2(self, s):
        """
        :type s: str
        :rtype: bool
        """
        stack = list()
        d = {"(": ")", "[": "]", "{": "}"}

        for c in s:
            if c in d:
                stack.append(c)
            elif len(stack) == 0 or d[stack.pop()] != c:
                return False
        return len(stack) == 0
