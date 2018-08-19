class MyStack<T> {
    private var stack: Array<T>

    init() {
        stack = Array()
    }

    func push(x: T) {
        stack.append(x)
    }

    func pop() -> T? {
        return stack.popLast()
    }

    func top() -> T? {
        return stack.last
    }

    func empty() -> Bool {
        return stack.count == 0
    }
}
