class Solution {
    func hammingWeight(_ n: uint) -> Int {
        var n = n
        var res = 0

        for _ in 0..<32 {
            if n & uint(1) == 1 {
                res += 1
            }
            n >>= 1
        }

        return res
    }
}
