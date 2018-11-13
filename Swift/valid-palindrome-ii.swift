class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let sChars = Array(s)
        var i = 0
        var j = s.count - 1

        while i < j {
            if sChars[i] != sChars[j] {
                return isPalindrome(sChars, i + 1, j) || isPalindrome(sChars, i, j - 1)
            } else {
                i += 1
                j -= 1
            }
        }

        return true
    }

    private func isPalindrome(_ s: [Character], _ i: Int, _ j: Int) -> Bool {
        var i = i
        var j = j

        while i < j {
            if s[i] != s[j] {
                return false
            } else {
                i += 1
                j -= 1
            }
        }

        return true
    }
}
