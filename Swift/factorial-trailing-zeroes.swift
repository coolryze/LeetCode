class Solution {
    func trailingZeroes(_ n: Int) -> Int {
        var n = n
        var res = 0

        while n > 0 {
            res += n / 5
            n /= 5
        }

        return res
    }
}