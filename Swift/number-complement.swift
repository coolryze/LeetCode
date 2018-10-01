class Solution {
    func findComplement(_ num: Int) -> Int {
        var num = num
        var res = 0
        var offset = 0

        while num > 0 {
            res += ((num & 1) ^ 1) << offset
            num >>= 1
            offset += 1
        }

        return res
    }
}
