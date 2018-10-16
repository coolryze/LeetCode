class Solution {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num > 1 else { return false }

        var sum = 1
        var i = 2
        let s = Int(sqrt(Double(num)))

        while i <= s {
            if num % i == 0 {
                sum += (i + num / i)
            }
            i += 1
        }

        return sum == num
    }
}
