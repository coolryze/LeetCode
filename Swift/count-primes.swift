class Solution {
    func countPrimes(_ n: Int) -> Int {
        if n <= 2 {
            return 0
        }
        var isPrime = [Bool](repeating: true, count: n)

        for i in 2..<n {
            if i * i >= n { break }
            if isPrime[i] {
                for j in stride(from: i * i, to: n, by: i) {
                    isPrime[j] = false
                }
            }
        }

        var count = 1
        for i in stride(from: 3, to: n, by: 2) {
            count += isPrime[i] ? 1 : 0
        }

        return count
    }
}
