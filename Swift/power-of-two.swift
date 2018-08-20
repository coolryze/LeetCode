class Solution {
    func isPowerOfTwo1(_ n: Int) -> Bool {
        var x = 1

        while x != n {
            if x < n {
                x <<= 1
            } else {
                return false
            }
        }

        return true
    }

    func isPowerOfTwo2(_ n: Int) -> Bool {
        return (n > 0) && (n & (n - 1) == 0)
    }
}
