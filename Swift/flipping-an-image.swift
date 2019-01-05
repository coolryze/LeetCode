class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var a = A

        for i in 0..<a.count {
            for j in 0..<(a[i].count + 1) / 2 {
                let x = a[i][j]
                let y = a[i][a[i].count - 1 - j]
                a[i][j] = y ^ 1
                a[i][a[i].count - 1 - j] = x ^ 1
            }
        }

        return a
    }
}
