class Solution {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        let chars = Array(S)
        let count = S.count
        var res = Array(repeating: 0, count: count)
        var currentPosition = -count

        for i in 0..<count {
            if chars[i] == C {
                currentPosition = i
            }
            res[i] = i - currentPosition
        }

        for i in Array(0..<count).reversed() {
            if chars[i] == C {
                currentPosition = i
            }
            res[i] = min(res[i], abs(currentPosition - i))
        }

        return res
    }
}
