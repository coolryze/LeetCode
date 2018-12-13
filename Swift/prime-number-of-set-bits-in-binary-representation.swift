class Solution {
    func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
        var res = 0
        let primes = Set([2, 3, 5, 7, 11, 13, 17, 19])

        for i in L...R {
            res += primes.contains(bitCount(i)) ? 1 : 0
        }

        return res
    }

    private func bitCount(_ n: Int) -> Int {
        var count = 0
        var n = n

        while n > 0 {
            n &= n - 1
            count += 1
        }

        return count
    }
}
