class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var history = [Int]()
        for op in ops {
            if op == "+" {
                history.append(history[history.count-1] + history[history.count-2])
            } else if op == "D" {
                history.append(history[history.count-1] * 2)
            } else if op == "C" {
                history.removeLast()
            } else {
                history.append(Int(op)!)
            }
        }

        return history.reduce(0) { $0 + $1 }
    }
}
