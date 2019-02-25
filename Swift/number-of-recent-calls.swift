class RecentCounter {
    private var queue: [Int]

    init() {
        queue = Array<Int>()
    }

    func ping(_ t: Int) -> Int {
        queue.append(t)

        while queue[0] < t - 3000 {
            queue.removeFirst()
        }

        return queue.count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */
 