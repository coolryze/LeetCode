class Solution {
    func largeGroupPositions(_ S: String) -> [[Int]] {
        var chars = Array(S)
        let count = S.count
        var res = [[Int]]()
        var i = 0

        for j in 0..<count {
            if j == count - 1 || chars[j] != chars[j + 1] {
                if j - i + 1 >= 3 {
                    res.append([i, j])
                }
                i = j + 1
            }
        }

        return res
    }
}
