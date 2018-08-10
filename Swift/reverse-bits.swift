class Solution {
    func reverseBits(_ n: Int32) -> Int32 {
        var n = n
        var res: Int32 = 0

        for _ in 0..<32 {
            res <<= 1
            res |= n & 1
            n >>= 1
        }

        return res
    }
}
