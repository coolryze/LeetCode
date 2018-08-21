class Queue<T> {
    private var data: Array<T>

    init() {
        data = Array<T>()
    }

    func push(_ x: T) {
        data.append(x)
    }

    func pop() -> T? {
        return data.removeFirst()
    }

    func peek() -> T? {
        return data.first
    }

    func size() -> Int {
        return data.count
    }

    func empty() -> Bool {
        return data.count == 0
    }
}

class Stack<T> {
    private var queue: Queue<T>

    init() {
        queue = Queue<T>()
    }

    func push(_ x: T) {
        queue.push(x)
        for _ in 0..<queue.size() - 1 {
            queue.push(queue.pop()!)
        }
    }

    func pop() -> T? {
        return queue.pop()
    }

    func top() -> T? {
        return queue.peek()
    }

    func size() -> Int {
        return queue.size()
    }

    func empty() -> Bool {
        return queue.empty()
    }
}
