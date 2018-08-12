class Solution {
    func isHappy(_ n: Int) -> Bool {
        var set = Set<Int>()
        var n = n

        while n != 1 {
            if set.contains(n) {
                return false
            }
            set.insert(n)

            var temp = 0
            while n > 0 {
                temp += (n % 10) * (n % 10)
                n /= 10
            }
            n = temp
        }

        return true
    }
}
