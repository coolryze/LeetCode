class Solution {
    func binaryGap1(_ N: Int) -> Int {
        var res = 0
        var last = -1

        for i in 0..<32 {
            if (N >> i) & 1 == 1{
                if last != -1 {
                    res = max(res, i - last)
                }
                last = i
            }
        }

        return res
    }

    func binaryGap2(_ N: Int) -> Int {
        var n = N
        var res = 0
        var last = -1
        var i = 0

        while n > 0 {
            if n & 1 == 1 {
                if  last != -1 {
                    res = max(res, i - last)
                }
                last = i
            }
            i += 1
            n >>= 1
        }

        return res
    }
}
