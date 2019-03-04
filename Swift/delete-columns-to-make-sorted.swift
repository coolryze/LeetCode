class Solution {
    func minDeletionSize(_ A: [String]) -> Int {
        var res = 0
        var charsArr = A.map { Array($0) }

        for c in 0..<charsArr[0].count {
            for r in 1..<charsArr.count {
                if charsArr[r-1][c] > charsArr[r][c] {
                    res += 1
                    break
                }
            }
        }

        return res
    }
}
