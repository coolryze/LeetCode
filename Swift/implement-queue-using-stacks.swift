class Stack<T> {
    private var data: Array<T>

    init() {
        data = Array<T>()
    }

    func push(_ x: T) {
        data.append(x)
    }

    func pop() -> T? {
        return data.popLast()
    }

    func top() -> T? {
        return data.last
    }

    func size() -> Int {
        return data.count
    }

    func empty() -> Bool {
        return data.count == 0
    }
}

class Queue<T> {
    private var stack: Stack<T>

    init() {
        stack = Stack<T>()
    }

    func push(_ x: T) {
        let temp = Stack<T>()
        while stack.size() > 0 {
            temp.push(stack.pop()!)
        }
        stack.push(x)
        while temp.size() > 0 {
            stack.push(temp.pop()!)
        }
    }

    func pop() -> T? {
        return stack.pop()
    }

    func peek() -> T? {
        return stack.top()
    }

    func size() -> Int {
        return stack.size()
    }

    func empty() -> Bool {
        return stack.empty()
    }
}
