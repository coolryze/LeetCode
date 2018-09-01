class Solution {
    func isPowerOfThree1(_ n: Int) -> Bool {
        var x = 1

        while x != n {
            if x < n {
                x *= 3
            } else {
                return false
            }
        }

        return true
    }

    func isPowerOfThree2(_ n: Int) -> Bool {
        return n > 0 && 1162261467 % n == 0
    }
}
