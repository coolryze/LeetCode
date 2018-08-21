from collections import deque

class Queue:
    def __init__(self):
        self.data = deque()

    def push(self, x):
        self.data.append(x)

    def pop(self):
        return self.data.popleft()

    def peek(self):
        return self.data[0]

    def size(self):
        return len(self.data)

    def empty(self):
        return len(self.data) == 0

class Stack:
    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.queue = Queue()

    def push(self, x):
        """
        Push element x onto stack.
        :type x: int
        :rtype: void
        """
        self.queue.push(x)
        for _ in range(self.queue.size() - 1):
            self.queue.push(self.queue.pop())

    def pop(self):
        """
        Removes the element on top of the stack and returns that element.
        :rtype: int
        """
        try:
            return self.queue.pop()
        except IndexError:
            raise IndexError('pop from empty stack')

    def top(self):
        """
        Get the top element.
        :rtype: int
        """
        try:
            return self.queue.peek()
        except IndexError:
            raise IndexError('top from empty stack')

    def size(self):
        """
        Get the stack size.
        :rtype: int
        """
        return self.queue.size()

    def empty(self):
        """
        Returns whether the stack is empty.
        :rtype: bool
        """
        return self.queue.empty()
