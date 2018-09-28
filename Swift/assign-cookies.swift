class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var g = g.sorted()
        var s = s.sorted()

        var res = 0
        var i = 0

        for j in 0..<s.count {
            if i == g.count {
                break
            }
            if s[j] >= g[i] {
                res += 1
                i += 1
            }
        }

        return res
    }
}
