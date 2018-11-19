class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        let chars = Array(s)
        var prev = 0
        var curr = 1
        var res = 0

        for i in 1..<chars.count {
            if chars[i-1] != chars[i] {
                res += min(prev, curr)
                prev = curr
                curr = 1
            } else {
                curr += 1
            }
        }
        res += min(prev, curr)

        return res
    }
}
