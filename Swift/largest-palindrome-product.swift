class Solution {
    func largestPalindrome(_ n: Int) -> Int {
        let upper = Int(pow(10, Double(n)) - 1)

        for i in 0..<upper {
            let i = upper - i
            if i <= upper / 10 { break }
            let palindrome = toPalindrome(i)
            for j in 0..<upper {
                let j = upper - j
                if j <= upper / 10 || palindrome / j > upper { break }
                if palindrome % j == 0 {
                    return palindrome % 1337
                }
            }
        }

        return 9
    }

    private func toPalindrome(_ i: Int) -> Int {
        let iStr = String(i)
        let str = iStr + String(iStr.reversed())
        return Int(str)!
    }
}
