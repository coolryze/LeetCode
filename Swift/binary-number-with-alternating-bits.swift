class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var curr = n % 2
        var n = n / 2

        while n > 0 {
            if n % 2 == curr {
                return false
            }
            curr = n % 2
            n = n / 2
        }

        return true
    }
}
