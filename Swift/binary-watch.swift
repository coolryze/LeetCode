class Solution {
    func readBinaryWatch(_ num: Int) -> [String] {
        var res = [String]()

        func bitCount(_ num: Int) -> Int {
            var count = 0
            var num = num
            while num > 0 {
                count += num & 1
                num >>= 1
            }
            return count
        }

        for h in 0...11 {
            for m in 0...59 {
                if bitCount(h) + bitCount(m) == num {
                    res.append(String(format: "%d:%02d", h, m))
                }
            }
        }

        return res
    }
}
