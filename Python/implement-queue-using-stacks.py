from collections import deque

class Stack:
    def __init__(self):
        self.data = deque()

    def push(self, x):
        self.data.append(x)

    def pop(self):
        return self.data.pop()

    def top(self):
        return self.data[-1]

    def size(self):
        return len(self.data)

    def empty(self):
        return len(self.data) == 0

class Queue:
    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.stack = Stack()

    def push(self, x):
        """
        Push element x to the back of queue.
        :type x: int
        :rtype: void
        """
        temp = Stack()
        while self.stack.size() > 0:
            temp.push(self.stack.pop())
        self.stack.push(x)
        while temp.size() > 0:
            self.stack.push(temp.pop())

    def pop(self):
        """
        Removes the element from in front of queue and returns that element.
        :rtype: int
        """
        try:
            return self.stack.pop()
        except IndexError:
            raise IndexError('pop from empty queue')

    def peek(self):
        """
        Get the front element.
        :rtype: int
        """
        try:
            return self.stack.top()
        except IndexError:
            raise IndexError('peek from empty queue')

    def size(self):
        """
        Get the queue size.
        :rtype: int
        """
        return self.stack.size()

    def empty(self):
        """
        Returns whether the queue is empty.
        :rtype: bool
        """
        return self.stack.empty()
