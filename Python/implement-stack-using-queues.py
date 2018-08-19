from collections import deque

class MyStack:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.stack = deque()

    def push(self, x):
        """
        Push element x onto stack.
        :type x: int
        :rtype: void
        """
        self.stack.append(x)

    def pop(self):
        """
        Removes the element on top of the stack and returns that element.
        :rtype: int
        """
        try:
            return self.stack.pop()
        except IndexError:
            raise IndexError('pop from empty stack')

    def top(self):
        """
        Get the top element.
        :rtype: int
        """
        try:
            return self.stack[-1]
        except IndexError:
            raise IndexError('top from empty stack')

    def empty(self):
        """
        Returns whether the stack is empty.
        :rtype: bool
        """
        return len(self.stack) == 0
